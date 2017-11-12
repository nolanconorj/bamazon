DROP DATABASE IF EXISTS bamazon_db;
CREATE DATABASE bamazon_db;

USE bamazon_db;

CREATE TABLE products (
    item_id INTEGER(11) AUTO_INCREMENT NOT NULL,
    product_name VARCHAR (100) NOT NULL,
    department_name VARCHAR (100) NOT NULL,
    price DECIMAL(10,2) NULL,
    stock_quantity INTEGER (11),
    PRIMARY KEY (item_id) 
);

USE bamazon_db;
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Wilson Basketball", "Sports", 59.99, 10);
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Bicyle", "Sports", 125.00, 6);
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Nike LeBron 15", "Shoes", 185.00, 8);
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Adidas Running Shorts", "Clothing", 24.99, 20);
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Patagonia Snapback hat", "Clothing", 29.99, 18);
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("NorthFace Backpack", "Accessories", 110.00, 4);
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Eli Manning Jersey", "Clothing", 80.00, 19);
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Nixon Classic Watch", "Accessories", 85.00, 12);
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Can Jam", "Sports", 19.99, 11);
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Under Armour Quarter Zip", "Clothing", 54.99, 22);

SELECT * FROM products;

UPDATE `bamazon_db`.`products` SET `product_name`='BMX Bicycle' WHERE `item_id`='2';