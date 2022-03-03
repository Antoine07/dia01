SELECT SUM(p.numFlying) as sumNumFly
FROM pilots as p
INNER JOIN compagnies as c
ON p.compagny = c.comp
WHERE c.name = 'AUSTRALIA Air';