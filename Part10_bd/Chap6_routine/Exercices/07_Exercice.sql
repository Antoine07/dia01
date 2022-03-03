DROP PROCEDURE IF EXISTS is_pilots_by_compagny;

DELIMITER |
CREATE PROCEDURE is_pilots_by_compagny (
    IN code_compagny CHAR(4), 
    OUT res TINYINT(1) ) 
    BEGIN
        DECLARE nb_pilots INT DEFAULT 0;
        SELECT COUNT(p.certificate) INTO nb_pilots
        FROM pilots as p
        JOIN compagnies as c
        ON c.comp = p.compagny
        WHERE c.comp = code_compagny ;
        
        IF nb_pilots > 0 THEN
            SELECT 1 INTO res;
        ELSE
            SELECT 0 INTO res;
        END IF;
    END |
DELIMITER ; 

set @c = 'AUS';
set @nb = 0;

CALL is_pilots_by_compagny(@c, @nb);
SELECT @nb;