SELECT c.name, p.certificate, p.name 
FROM compagnies as c 
LEFT OUTER JOIN pilots as p 
ON p.compagny = c.comp ;

-- INSERT


INSERT INTO `pilots`
(`certificate`, `name`, `numFlying`, `bonus`, `num_jobs`, `birth_day`)
VALUES
('ct-19', 'Harry', 0, 100, 0, '2000-01-01 12:00:00');

SELECT c.name, p.certificate, p.name 
FROM compagnies as c 
RIGHT OUTER JOIN pilots as p 
ON p.compagny = c.comp ;