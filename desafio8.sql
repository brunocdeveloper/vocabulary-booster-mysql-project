SELECT
tableCustomers.ContactName AS 'Nome de Contato',
tableShippers.ShipperName AS 'Empresa que fez o envio',
tableOrders.OrderDate AS 'Data do pedido'
FROM w3schools.customers AS tableCustomers
INNER JOIN w3schools.orders AS tableOrders
INNER JOIN w3schools.shippers AS tableShippers
ON tableShippers.ShipperID = tableOrders.ShipperID
AND tableCustomers.CustomerID = tableOrders.CustomerID
WHERE tableShippers.ShipperID IN (1, 2)
ORDER BY `Nome de Contato`, `Empresa que fez o envio`, `Data do pedido`;

