INSERT INTO zoo(
	nazov_zoo,
	miesto
)
VALUES
('zoo_Bratislava', 'Slovensko'),
('zoo_Praha', 'Cesko'),
('zoo_Bojnice', 'Slovensko'),
('zoo_Ostrava', 'Cesko'),
('zoo_Kosice', 'Slovensko');
INSERT INTO potrava(
	druh,
	zostatok_na_sklade
	)
VALUES
('maso', '10000'),
('zelenina', '10000'),
('ovocie', '10000');
INSERT INTO zamestnanec(
	meno,
	vek,
	vyplata,
	id_zoo)
VALUES
('Peter', '30', '1200', '3'),
('Kristina', '25', '1350', '2'),
('Jozef', '59', '1040', '4'),
('Samuel', '18', '990', '3'),
('Filip', '44', '1100', '5'),
('Natalia', '35', '1550', '1'),
('Valika', '65', '1320', '5'),
('Adrian', '18', '800', '4'),
('Denis', '19', '950', '1'),
('Tomas', '21', '1000', '2');
INSERT INTO zvierata(
	meno,
	pohlavie,
	vek,
	jedlo,
	spotreba_potravy_v_kg,
	id_zoo,
	id_zamestnanec)
VALUES
('lev', '1', '12', '1', '20', '2', '10'),
('zebra', '2', '9', '2', '15', '5', '5'),	
('gorila', '2', '18', '3', '10', '4', '3'),	
('slon', '1', '7', '2', '100', '3', '1'),	
('simpanz', '1', '4', '3', '5', '1', '6'),
('puma', '2', '12', '1', '6', '4', '8'),
('zirafa', '2', '13', '2', '20', '3', '4'),
('hroch', '2', '6', '2', '80', '5', '7'),
('tiger', '1', '8', '1', '18', '1', '9'),
('makak', '1', '1', '3', '1', '2', '2');
INSERT INTO navstevnici(
	meno,
	vek,
	pohlavie)
VALUES
('Tomas', '12', '1'),
('Milan', '40', '1'),
('Peter', '4', '1'),
('Anna', '66', '2'),
('Tereza', '32', '2'),
('Samuel', '22', '1'),
('Oliver', '19', '1'),
('Natalia', '20', '2'),
('Simona', '78', '2'),
('Valika', '14', '2');
INSERT INTO navstevy(
	straveny_cas_v_zoo,
	minute_peniaze,
	datum,
	id_navstevnik,
	id_zoo
)
VALUES
('110', '100','2019-01-16','9', '1'), 
('220', '20','2018-02-12','10', '5'), 
('45', '35','2016-10-13','8', '5'), 
('90', '80','2014-09-05','7', '3'), 
('80', '120','2015-08-22','5', '4'), 
('99', '90','2003-05-01','6', '2'), 
('145', '10','2002-04-28','3', '1'), 
('30', '20','2006-01-17','4', '3'), 
('115', '65','2021-02-12','2', '2'), 
('78', '70','2019-11-19','1', '1'), 
('64', '200','2019-03-11','5', '2'), 
('74', '40','2000-02-23','6', '3'), 
('123', '20','2010-04-25','7', '4'), 
('50', '36','2012-05-10','8', '5'), 
('90', '45','2013-06-03','9', '3');
