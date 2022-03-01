/*

Ajoutez une colonne **bonus** à la table pilots, puis ajoutez le bonus 1000 pour les certificats 'ct-1', 'ct-11', 'ct-12', pour le certificat ct-56 un bonus de 2000 et pour tous les autres 500.
*/

SELECT name 
FROM pilots
WHERE numFlying = ( SELECT MAX(numFlying)  FROM pilots );