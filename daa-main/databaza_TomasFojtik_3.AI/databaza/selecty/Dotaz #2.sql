/*4.1 Vypíše meno zvieraťa z tabuľky zvieratá a ktomu druh potravy z tabuľky potrava*/
SELECT meno, druh FROM zvierata 
JOIN potrava ON id_potrava = jedlo WHERE vek > 10 GROUP BY meno;
/*4.2 Vypíše meno zvieraťa a jeho spotrebu potravy z tabuľky zvierata a z tabulky jedlo vypíše zostatok na sklade*/
SELECT meno AS zviera, spotreba_potravy_v_kg,zostatok_na_sklade FROM zvierata
JOIN potrava ON id_potrava = jedlo WHERE druh = 'maso' GROUP BY spotreba_potravy_v_kg;
/*5.1 Vyberie meno a pohlavie zvieraťa, ktorému je pridelený druh potravy zelenina */
SELECT meno, pohlavie FROM zvierata WHERE jedlo = (SELECT id_potrava FROM potrava WHERE druh LIKE 'zelenina');
/*5.2 Vyberie meno a počet kg spotrebovanej potravy u zvierat, ktorých druh jedla obsahuje písmeno v */
SELECT meno, spotreba_potravy_v_kg FROM zvierata WHERE jedlo = (SELECT id_potrava FROM potrava WHERE druh LIKE '%v%');
