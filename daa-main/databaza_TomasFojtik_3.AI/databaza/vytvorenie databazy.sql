CREATE DATABASE zoo;
USE zoo;

CREATE TABLE zoo (
  id_zoo INT AUTO_INCREMENT, PRIMARY KEY (id_zoo),
  nazov_zoo VARCHAR(50),
  miesto VARCHAR(50)
  );
CREATE TABLE potrava(
	id_potrava INT AUTO_INCREMENT, PRIMARY KEY (id_potrava),
	druh VARCHAR(50),
	zostatok_na_sklade INT(10)
	);

 CREATE TABLE zamestnanec(
  id_zamestnanec INT AUTO_INCREMENT, PRIMARY KEY (id_zamestnanec),
  meno VARCHAR (50),
  vek INT (10),
  vyplata INT (10),
  id_zoo INT (10),
  KEY(id_zoo),
  FOREIGN KEY (id_zoo) REFERENCES ZOO (id_zoo)
  );
 CREATE TABLE zvierata(
   id_zviera INT AUTO_INCREMENT, PRIMARY KEY (id_zviera), 
   meno VARCHAR(50),
   pohlavie INT(10),
   vek INT(10),
   jedlo INT(10),
   spotreba_potravy_v_kg INT(10),
   id_zoo INT(10),
   id_zamestnanec INT(10),
   KEY (id_zoo),
   KEY (id_zamestnanec),
   KEY (jedlo),
   FOREIGN KEY (id_zoo) REFERENCES zoo (id_zoo),
   FOREIGN KEY (id_zamestnanec) REFERENCES zamestnanec (id_zamestnanec),
   FOREIGN KEY (jedlo) REFERENCES potrava (id_potrava)
   ); 
   

  
 CREATE TABLE navstevnici(
   id_navstevnik INT AUTO_INCREMENT, PRIMARY KEY (id_navstevnik),
   meno VARCHAR (50),
   vek INT (10),
   pohlavie INT (10)
   );

 CREATE TABLE  navstevy(
   id_navsteva INT AUTO_INCREMENT, PRIMARY KEY (id_navsteva),
   straveny_cas_v_zoo INT (10),
	minute_peniaze INT (10),
	datum DATE,
   id_navstevnik INT (10),
   id_zoo INT (10),
   KEY(id_zoo),
   KEY(id_navstevnik),
   FOREIGN KEY (id_zoo) REFERENCES zoo (id_zoo),
   FOREIGN KEY (id_navstevnik) REFERENCES navstevnici (id_navstevnik)
	);
 



