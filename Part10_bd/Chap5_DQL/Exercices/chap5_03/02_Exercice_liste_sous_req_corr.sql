
/*
Ajoutez un champ last_name dans la table pilots.
*/

ALTER TABLE pilots
ADD last_name VARCHAR(100) AFTER name;


UPDATE `pilots` 
SET `last_name` = (
    CASE 
        WHEN name IN ('alan', 'yi', 'sophie') THEN 'Dupont'
        WHEN name IN ('yan', 'benoit') THEN 'chai'
        WHEN name IN ('jhon', 'pierre') THEN 'chai'
        WHEN name IN ('albert') THEN 'Pierre'
        ELSE 'Lu'
    END);


-- 1. Sélectionnez les adresses des compagnies qui n'ont pas de pilot, en utilisant une sous-requête corrélée.

SELECT name, CONCAT_WS( ' ', street, city, numStreet ) as address 
FROM compagnies as c  WHERE NOT EXISTS 
( SELECT 1 FROM pilots as p WHERE p.compagny = c.comp ) ;

-- 2. Sélectionnez les adresses des compagnies qui ont des pilots, en utilisant une sous-requête corrélée.

SELECT name, CONCAT_WS( ' ', street, city,  numStreet ) as address 
FROM compagnies as c  WHERE EXISTS 
( SELECT 1 FROM pilots as p WHERE p.compagny = c.comp ) ;

-- 3. Sélectionnez les pilots qui ont le même nom de famille en utilisant une sous-requête corrélée.

SELECT name, last_name
FROM pilots as p
WHERE last_name IN 
(SELECT last_name FROM pilots as pp 
WHERE p.certificate <> pp.certificate );

-- Il faut exclure de manière évidente les noms de famille des personnes qui n'ont pas le même nom.

-- On peut de manière équivalente écrire cette même requête comme suit

SELECT name, last_name
FROM pilots as p
WHERE EXISTS
(SELECT 1 FROM pilots as pp 
WHERE p.certificate <> pp.certificate AND p.last_name = pp.last_name);