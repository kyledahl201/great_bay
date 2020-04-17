DROP DATABASE IF EXISTS greatbayDB;

CREATE DATABASE greatbayDB;

USE greatbayDB;

-- We will need to be able to pull from any of these tables below when the user inputs a certain type of thing they are lookign for

CREATE TABLE products (
    id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    productType VARCHAR(20) NOT NULL,
    title VARCHAR(500) NOT NULL,
    price INT,
    describe VARCHAR(200)
)



-- next i'll grab everything of a certain argument
SELECT * FROM services WHERE title = ""
SELECT * FROM tasks WHERE title = ""
SELECT * FROM projects WHERE title = ""
SELECT * FROM items WHERE title = ""