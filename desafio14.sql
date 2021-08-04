SELECT
tableCustomers.Country AS 'País'
FROM w3schools.customers as tableCustomers
INNER JOIN w3schools.suppliers AS tableSuppliers
ON tableSuppliers.Country <> tableCustomers.Country
GROUP BY `País`
ORDER BY `País`
LIMIT 5;
