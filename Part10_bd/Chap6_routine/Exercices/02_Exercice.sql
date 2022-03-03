DROP PROCEDURE IF EXISTS  compagny_more_than_two_pilots;

DELIMITER |
CREATE PROCEDURE compagny_more_than_two_pilots(IN n INT)
    BEGIN
        SELECT c.name, COUNT(p.certificate) as nb
        FROM pilots as p
        JOIN compagnies as c
        ON p.compagny = c.comp
        GROUP BY p.compagny
        HAVING nb > n
    END |
DELIMITER ; 