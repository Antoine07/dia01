/*

Ajoutez une colonne **bonus** à la table pilots, puis ajoutez le bonus 1000 pour les certificats 'ct-1', 'ct-11', 'ct-12', pour le certificat ct-56 un bonus de 2000 et pour tous les autres 500.

*/

ALTER TABLE pilots
DROP bonus;

ALTER TABLE pilots
ADD bonus DECIMAL(8,2) AFTER certificate;


-- de manière équivalente avec SET CASE
UPDATE `pilots` 
SET `bonus` = (
    CASE 
        WHEN certificate IN ('ct-1', 'ct-11', 'ct-12') THEN 1000.00
        WHEN certificate IN ('ct-56') THEN 2000.00
        ELSE 500.00
    END);