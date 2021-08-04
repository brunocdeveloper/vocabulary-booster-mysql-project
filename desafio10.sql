SELECT 
tableProduct.ProductName AS 'Produto',
MIN(tableOrderDetails.Quantity) AS 'Mínima',
MAX(tableOrderDetails.Quantity) AS 'Máxima',
ROUND(AVG(tableOrderDetails.Quantity), 2) AS 'Média'
FROM w3schools.products AS tableProduct
INNER JOIN w3schools.order_details AS tableOrderDetails
ON tableOrderDetails.ProductID = tableProduct.ProductID
GROUP BY `Produto` HAVING `Média` > 20
ORDER BY `Média`, `Produto`;
