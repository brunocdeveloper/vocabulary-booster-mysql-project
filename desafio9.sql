SELECT
CONCAT(tableEmployees.FirstName, ' ', tableEmployees.LastName) AS 'Nome Completo',
COUNT(tableOrders.EmployeeID) AS 'Total de pedidos'
FROM w3schools.employees AS tableEmployees
INNER JOIN w3schools.orders AS tableOrders ON tableOrders.EmployeeID = tableEmployees.EmployeeID
GROUP BY tableOrders.EmployeeID
ORDER BY `Total de pedidos`;
