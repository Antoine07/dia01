-- 3. Créez une procédure qui affiche les compagnies qui n'ont pas de pilote.

DROP PROCEDURE IF EXISTS compagny_more_than_two_pilots;

DELIMITER |
CREATE PROCEDURE compagny_more_than_two_pilots()
    BEGIN
        SELECT c.name
        FROM pilots as p
        RIGHT JOIN compagnies as c
        ON p.compagny = c.comp
        WHERE p.name IS NULL;
    END |
DELIMITER ; 