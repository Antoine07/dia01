DROP PROCEDURE IF EXISTS sum_hour_by_pilot;

DELIMITER |
CREATE PROCEDURE sum_hour_by_pilot(
    IN cert VARCHAR(6), 
    OUT nb SMALLINT UNSIGNED
    )
    BEGIN
        SELECT ROUND( SUM(numFlying), 1 ) INTO nb
        FROM pilots 
        WHERE certificate = cert;
    END |
DELIMITER ; 

set @sum = 0;
CALL sum_hour_by_pilot('ct-11', @sum);
SELECT @sum;