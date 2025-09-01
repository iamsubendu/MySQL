SELECT name, price 
FROM Products 
WHERE price <= 500 AND category = 'Electronics';

SELECT name, price, sales_count 
FROM Products 
ORDER BY sales_count DESC, price ASC;

