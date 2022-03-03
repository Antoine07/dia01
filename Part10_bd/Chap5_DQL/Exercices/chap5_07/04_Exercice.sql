SELECT c.name as nameComp, SUM(p.numFlying) as sumFly
FROM pilots as p
INNER JOIN compagnies as c
ON p.compagny = c.comp
GROUP BY c.name;