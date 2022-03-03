

-- 01

SELECT GROUP_CONCAT( p.certificate, ' ',  c.name separator '') as pilot_info, p.compagny
FROM compagnies as c
INNER JOIN pilots as p ON p.compagny  =  c.comp
GROUP BY p.compagny;


-- 02

SELECT p.certificate, c.name as nameComp, p.name as namePilot
FROM compagnies as c
INNER JOIN pilots as p ON p.compagny  =  c.comp
WHERE c.name = 'Air France'
AND p.numFlying > 60;