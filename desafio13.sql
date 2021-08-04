SELECT
ProductName AS 'Produto',
Price AS 'Preço'
FROM w3schools.products AS tableProducts,
w3schools.order_details AS tableOrderDetails
WHERE tableOrderDetails.ProductID = tableProducts.ProductID
AND tableOrderDetails.Quantity > 80
ORDER BY `Produto`;
