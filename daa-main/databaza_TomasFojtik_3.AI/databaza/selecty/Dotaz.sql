/*1.1 Vyberie všetky dáta o zvieratach ktoré majú 15 alebo viac rokov*/
SELECT * FROM zvierata WHERE vek >= 15;
/* 1.2 Vyberie všetky dáta o zoo, ktoré sídlia v Česku*/
SELECT * FROM zoo WHERE miesto LIKE 'Cesko';
/*1.3 Vyberie všetky dáta o navstevnikoch zoradené podľa mena*/
SELECT * FROM navstevnici ORDER BY meno;
/*1.4 Vyberie meno a vyplatu zamestnancov, ktorí ju majú väčšiu ako 1300 alebo rovnú, a zoradí ju podľa výplaty*/
SELECT meno , vyplata FROM zamestnanec WHERE vyplata >= 1300 ORDER BY vyplata;
/*2.1 Vyberie všetky dáta o navštevníkoch kde sa meno začína na S a ich vek je väčší ako 12 alebo pohlavie sa rovná 1 */
SELECT * FROM navstevnici WHERE meno LIKE 'S%' AND vek > '12' OR pohlavie = '1';
/*2.2 Vyberie všetky dáta o návštevníkoch, ktorých pohlavie sa nerovná 1 */
SELECT * FROM navstevnici WHERE pohlavie != '1';
/*2.3 Vyberie všetky dáta o zoo, ktoré v mene obsahujú a */
SELECT * FROM zoo WHERE nazov_zoo LIKE '%a%';
/*3.1 Napíše počet kusov samcov a samíc */
SELECT pohlavie, COUNT(*) AS mnozstvo FROM zvierata GROUP BY pohlavie;
/* 3.2 Napíše počet zoo v Česku a na Slovensku*/
SELECT miesto, COUNT(*) AS mnozstvo FROM zoo GROUP BY miesto;
/*3.3 Spočíta koľkokrát sa určitý vek nachádza v tabuľke zamestnanec, ak je ich množstvo väčšie ako 1 */
SELECT vek, COUNT(*) AS mnozstvo FROM zamestnanec GROUP BY vek HAVING mnozstvo > 1;
