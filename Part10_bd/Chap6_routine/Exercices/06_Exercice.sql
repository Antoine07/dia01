ALTER TABLE pilots ADD salary DECIMAL(7,2) DEFAULT NULL ;

DELIMITER $$
DROP PROCEDURE IF EXISTS add_salary$$
CREATE PROCEDURE add_salary()
  BEGIN 
    DECLARE done INT DEFAULT FALSE;
    DECLARE certificate_pilot VARCHAR(6);
    DECLARE pilot_cursor CURSOR FOR SELECT p.certificate FROM pilots as p;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
    
    OPEN pilot_cursor;
    read_loop: LOOP
        -- permet de savoir à quel ligne on se trouve dans la lecture des données
        -- fetch permet d'avancer dans la lecture des données d'une table
        FETCH pilot_cursor INTO certificate_pilot;

        IF done THEN
           LEAVE read_loop;
        ELSE 
           UPDATE pilots SET salary=(ROUND(RAND()*15 * 1000, 2 )) 
           -- vérification de type
           WHERE certificate COLLATE utf8mb4_general_ci = certificate_pilot AND compagny IS NOT NULL;
        END IF;

     END LOOP;
     CLOSE pilot_cursor;
  END$$
DELIMITER ;

-- 6. Créez une procédure qui affiche les noms des pilotes avec leurs bonus ordonnées par ordre décroissant de bonus.

DROP PROCEDURE IF EXISTS pilot_name_by_bonus;

DELIMITER |
CREATE PROCEDURE pilot_name_by_bonus()
    BEGIN
        SELECT name, bonus
        FROM pilots
        WHERE bonus IS NOT NULL
        ORDER BY bonus DESC ;
    END |
DELIMITER ; 

call pilot_name_by_bonus();