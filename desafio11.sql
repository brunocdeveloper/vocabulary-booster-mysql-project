SELECT
t1.ContactName AS 'Nome',
t1.Country AS 'País',
(
SELECT
COUNT(*) -1
FROM
w3schools.customers AS t2
WHERE t2.Country = t1.Country
) AS `Número de compatriotas`
FROM w3schools.customers AS t1
HAVING `Número de compatriotas` <> 0;
