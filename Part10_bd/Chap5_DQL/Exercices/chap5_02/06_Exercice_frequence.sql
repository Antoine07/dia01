
-- Calculez la fréquence des heures de vols de chaque pilote par rapport au total des heures de vols

SELECT ROUND( numFlying / (SELECT SUM(numFlying)  FROM pilots), 2 ) * 100 as fq_nbflying
FROM pilots;