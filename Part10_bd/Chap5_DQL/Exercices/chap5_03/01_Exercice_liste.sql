-- 1. Quelles sont les coordonnées des compagnies qui employe(nt) des pilotes faisant moins de 90 heures de vols ?

SELECT numStreet,
       street,
       city
FROM compagnies
WHERE comp IN
        (SELECT compagny
         FROM pilots
         WHERE numFlying < 90 );

-- 2. Sélectionnez le pilote ayant fait le plus d'heures de vol sans utiliser l'opérateur MAX.

-- PLUS GRAND ou égale
SELECT name, numFlying
FROM pilots 
WHERE numFlying >= ALL ( SELECT numFlying FROM pilots );

-- tous les nb d'heure de vol sauf le plus grand, seul le nb d'heure de vol le plus grand ne sera pas sélectionné.
-- tous les nb d'heure de vol sauf le plus grand, seul le nb d'heure de vol le plus grand ne sera pas sélectionné.

SELECT name, numFlying
FROM pilots
WHERE numFlying < ANY( SELECT numFlying FROM pilots );

-- 

SELECT numFlying, name FROM pilots WHERE numFlying != (SELECT MAX(numFlying) FROM pilots ) ;

SELECT name, numFlying
FROM pilots
WHERE numFlying < ALL( SELECT MAX(numFlying) FROM pilots );

-- 3. Faites la somme des heures de vols des pilotes dont le nom de la compagnie est Air France, vous ne connaissez pas bien sûr la clef primaire de la compagine.

SELECT sum(numFlying)
FROM pilots
WHERE compagny IN 
 (SELECT comp 
  FROM compagnies
  WHERE name = 'Air France' );

/*

-- 4. Ajoutez maintenant la compagnie suivante dans la table compagnies.

comp = ITA, street = mapoli, city = Rome, name = Italia Air, numStreet =  20

Trouvez toute(s) les/la compagnie(s) n'ayant pas de pilotes.
*/ 
INSERT INTO `compagnies`
SET `comp` = 'ITA', 
    `street` = 'mapoli', 
    `city` = 'Rome', 
    `name` = 'Italia Air',
    `numStreet` = 20;


SELECT numStreet,
       street,
       city
FROM compagnies
WHERE comp NOT IN
        (SELECT compagny
         FROM pilots);

-- 5. Sélectionnez tous les pilotes dont le nombre d'heures de travail est inférieur à tous les nombres d'heures de travail de la compagnie CHI.

SELECT name,
       compagny
FROM pilots
WHERE num_jobs < ALL
        (SELECT num_jobs
         FROM pilots
         WHERE compagny='CHI' );

/*
-- 6.
Sélectionnez la longueur des noms des pilotes dont la longueur de leurs noms est inférieur à toutes les longueurs des noms de la compagny FRE1.
*/
SELECT length(name),
       compagny
FROM pilots
WHERE length(name) < ALL
        ( select length(name)
         from pilots
         where compagny = 'FRE1' );

/*
-- 7. Ajoutez la colonne plane à la table pilots :
Sélectionnez les coordonnées des compagnies dont le nombre d'heures de vol est inférieur à tous les nombres d'heures de vol (chaque heure de vol) des A380.
*/

ALTER TABLE pilots
ADD COLUMN plane
ENUM('A380', 'A320', 'A340') AFTER name;

UPDATE pilots
SET plane = 'A380'
WHERE name in ('Alan', 'Sophie', 'Albert', 'Benoit');

UPDATE pilots
SET plane = 'A320'
WHERE name in ('Tom', 'Jhon', 'Pierre');

UPDATE pilots
SET plane = 'A340'
WHERE name in ('Yan', 'Yi');

SELECT numStreet, street, city 
FROM compagnies
WHERE comp IN(
    SELECT compagny
    FROM pilots
    WHERE numFlying < ALL (
        SELECT numFlying
        FROM pilots
        WHERE plane='A380'
    )
);
