CREATE TABLE stock (
    stock_id INT PRIMARY KEY AUTO_INCREMENT,
    product_id INT,
    quantity INT,
    storage_location VARCHAR(100),
    entry_date DATE,
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);
INSERT INTO stock (product_id, quantity, storage_location, entry_date)
VALUES
(1, 50, 'Armazém 1', '2024-07-29'),
(2, 100, 'Armazém 1', '2024-07-29'),
(3, 200, 'Armazém 2', '2024-07-29'),
(4, 150, 'Armazém 2', '2024-07-29'),
(5, 75, 'Armazém 1', '2024-07-29'),
(6, 60, 'Armazém 3', '2024-07-29'),
(7, 90, 'Armazém 2', '2024-07-29'),
(8, 120, 'Armazém 1', '2024-07-29'),
(9, 110, 'Armazém 3', '2024-07-29'),
(10, 80, 'Armazém 1', '2024-07-29'),
(11, 140, 'Armazém 2', '2024-07-29'),
(12, 130, 'Armazém 1', '2024-07-29'),
(13, 70, 'Armazém 3', '2024-07-29'),
(14, 160, 'Armazém 2', '2024-07-29'),
(15, 180, 'Armazém 1', '2024-07-29');
SELECT 
    product.id_product,
    product.name_product,
    SUM(stock.quantity) AS total_quantity_in_stock
FROM 
    stock
INNER JOIN 
    product
ON 
    stock.product_id = product.id_product
GROUP BY 
    product.id_product, 
    product.name_product;
SELECT 
    product.id_product,
    product.name_product,
    SUM(stock.quantity * product.price) AS total_value_in_stock
FROM 
    stock
INNER JOIN 
    product
ON 
    stock.product_id = product.id_product
GROUP BY 
    product.id_product, 
    product.name_product;
SELECT 
    stock.storage_location,
    SUM(stock.quantity * product.price) AS total_value_in_stock
FROM 
    stock
INNER JOIN 
    product
ON 
    stock.product_id = product.id_product
GROUP BY 
    stock.storage_location;
SELECT * FROM stock WHERE storage_location = 'Armazém 1';
SELECT * FROM stock WHERE storage_location = 'Armazém 2';
SELECT * FROM stock WHERE storage_location = 'Armazém 3';
