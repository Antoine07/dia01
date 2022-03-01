



-- 1 Sélectionnez tous les pilotes de la compagnie AUS
SELECT name FROM pilots WHERE compagny= "AUS";

-- 2. Sélectionnez les noms des pilotes de la compagnie FRE1 ayant fait plus de 15 heures de vols.

SELECT name FROM pilots WHERE compagny= "FRE1" AND numFlying > 15;

-- 3. Sélectionnez les noms des pilotes de la compagnie FRE1 ayant fait plus de 20 heures de vols.

SELECT name FROM pilots WHERE compagny= "FRE1" AND numFlying > 20 ;

-- 4. Sélectionnez les noms des pilotes de la compagnie FRE1 ou AUS ayant fait plus de 20 de vols.

SELECT name 
FROM pilots 
WHERE ( compagny= "FRE1" OR compagny = "AUS" ) AND numFlying > 20 ;

-- de manière équivalente avec un IN

SELECT name 
FROM pilots
WHERE  compagny IN ('FRE1','AUS') AND numFlying > 20;

-- 5. Sélectionnez les noms des pilotes ayant fait entre 190 et 200 heures de vols.
-- Attention le between est large il prend les "bornes" de l'intervalle.

SELECT name 
FROM pilots
WHERE numFlying BETWEEN 190 AND 200;

-- strictement 

SELECT name 
FROM pilots
WHERE numFlying > 190 AND numFlying < 200; 

-- 6. Sélectionnez les noms des pilotes qui sont nés après 1978.

SELECT name, birth_date
FROM pilots
WHERE YEAR(birth_date) > '1978';

-- 7. Sélectionnez les noms des pilotes qui sont nés avant 1978.

SELECT name, birth_day
FROM pilots
WHERE birth_day < '1978';

-- 8. Sélectionnez les noms des pilotes qui sont nés entre 1978 et 2000.

SELECT name, birth_day
FROM pilots
WHERE YEAR(birth_day) >= '1978' AND YEAR(birth_day) <= '2000';

-- de manière équivalente

SELECT name, birth_day
FROM pilots
WHERE YEAR(birth_day) BETWEEN '1978' AND  '2000';

-- 9. Quels sont les pilotes qui ont un vol programmé après 2020-05-08 ?

SELECT name, next_flight
FROM pilots
WHERE next_flight > '2020-05-09';

-- une autre solution
SELECT name, next_flight FROM pilots WHERE DATE_FORMAT(next_flight, '%Y-%m-%d') > '2020-05-08';

-- 10. Sélectionnez tous les noms des pilotes qui sont dans les compagnies : AUS et FRE1.

SELECT name FROM pilots WHERE compagny = 'AUS' AND compagny = 'FRE1';

-- On peut vérifier si il y en a dans les deux compagnies suivante 

SELECT name FROM pilots WHERE compagny = 'AUS' OR compagny = 'FRE1';
-- identique à 
SELECT name FROM pilots WHERE compagny IN ( 'AUS', 'FRE1' );

-- 11. Sélectionnez tous les noms des pilotes qui ne travaillent pas pour les compagnies : AUS ou FRE1.

SELECT name FROM pilots WHERE compagny NOT IN ( 'AUS', 'FRE1' );
-- de manière équivalente
SELECT name FROM pilots WHERE compagny != 'AUS' AND compagny != 'FRE1';

/*

 !(p1 OR p2) = !p1 and !p2

*/

-- 12. Sélectionnez tous les des pilotes dont le nom de compagnie contient un A.

SELECT name, compagny
FROM pilots
WHERE compagny LIKE '%a%';

-- 13. Sélectionnez tous les pilotes dont le nom de la compagnie commence par un F.

SELECT name, compagny
FROM pilots
WHERE compagny LIKE 'f%';

-- 14. Sélectionnez tous les pilotes dont le nom de la compagnie contient un I suivi d'un caractère.

SELECT name,compagny 
FROM pilots 
WHERE compagny LIKE '%i_';  
