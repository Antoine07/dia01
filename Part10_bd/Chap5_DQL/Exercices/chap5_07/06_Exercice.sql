
/* 1. Sélectionnez les compagnies et leurs pilotes incluant 
les compagnies n'ayant pas de pilote et les pilotes n'ayant pas de compagnie.
*/

SELECT c.name, p.certificate, p.name 
FROM compagnies as c 
LEFT OUTER JOIN pilots as p 
ON p.compagny = c.comp
UNION 
SELECT NULL, certificate, name
FROM pilots
WHERE compagny IS NULL;

-- suite de 1 sélectionnez les comagnies qui n'ont pas de pilote

SELECT c.name, p.certificate, p.name 
FROM compagnies as c 
LEFT OUTER JOIN pilots as p 
ON p.compagny = c.comp 
WHERE p.compagny IS NULL ;

-- 2. Et les pilotes qui n'ont pas de compagnie

SELECT NULL, certificate, name
FROM pilots
WHERE compagny IS NULL;