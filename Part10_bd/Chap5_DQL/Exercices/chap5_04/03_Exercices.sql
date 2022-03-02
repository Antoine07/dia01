-- 1.

SELECT compagny,
       YEAR(created_at) as year,
       SUM(profit) as ca
FROM sales
GROUP BY year,
         compagny WITH ROLLUP;


-- 2. module l'ordre des groupements à vous de voir selon ce que vous voulez.

SELECT compagny,
       YEAR(created_at) as y,
       MONTH(created_at) as m,
       SUM(profit) as ca
FROM sales
GROUP BY compagny,
         y,
         m WITH ROLLUP;
