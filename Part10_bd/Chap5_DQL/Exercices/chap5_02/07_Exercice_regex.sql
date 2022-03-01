/*
Récupérez tous les noms des pilotes dont le nom de leur(s) compagnie(s) se termine(nt) par R suivi de 2 caractères exactements.

*/


SELECT name, compagny 
FROM pilots 
WHERE compagny REGEXP '.*r.{2}$';