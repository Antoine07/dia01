-- 5. Créez une procédure qui affiche les pilotes d'une compagnie donnée.


DROP PROCEDURE IF EXISTS show_pilots_by_compagny;

DELIMITER |
CREATE PROCEDURE show_pilots_by_compagny(
    IN comp CHAR(4)
    )
    BEGIN
        SELECT p.name
        FROM pilots as p
        JOIN compagnies as c
        ON p.compagny = c.comp
        WHERE c.comp = comp;
    END |
DELIMITER ; 

CALL show_pilots_by_compagny('AUS');