

--  Créez des dates aléatoires de +/-3jours, par rapport à la dernière date la plus récente de la table pilots.

-- SELECT FLOOR(RAND()*7) - 3 ;

-- SELECT DISTINCT ( max(birth_day) ) FROM pilots;

-- PAS MAL !
SELECT DATE_ADD((SELECT DISTINCT( max(birth_day) ) FROM pilots ) , INTERVAL FLOOR(RAND()*7) - 3 DAY)
;

-- Le prof un peu moins bien 
SELECT DATE_ADD(birth_day, INTERVAL FLOOR(RAND()*7) - 3 DAY) 
FROM pilots 
WHERE birth_day = (SELECT max(birth_day) FROM pilots) LIMIT 1;
