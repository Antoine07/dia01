ALTER TABLE `pilots` 
ADD COLUMN `lead_pl` VARCHAR(6) AFTER `certificate`;

ALTER TABLE `pilots` 
ADD CONSTRAINT `fk_pilots_lead_pl` 
FOREIGN KEY (`lead_pl`) REFERENCES `pilots`(`certificate`);

-- 02 
START TRANSACTION; 

SET @leadplP = (SELECT DISTINCT certificate FROM pilots WHERE name = 'pierre' ) ;
SET @leadplJ = (SELECT DISTINCT certificate FROM pilots WHERE name = 'jhon' ) ;

UPDATE pilots
SET lead_pl = (
   CASE 
        WHEN `name` IN ('alan', 'tom', 'yi') THEN @leadplP 
        WHEN `name` IN ('sophie', 'albert', 'yan') THEN @leadplJ
        ELSE NULL
END);

SELECT certificate, lead_pl FROM pilots WHERE lead_pl IS NOT NULL ;

COMMIT;

--- 03

SELECT `name`
FROM `pilots`
WHERE `lead_pl` IS NULL;



SELECT `name`
FROM `pilots`
WHERE `lead_pl`  IS NOT NULL;