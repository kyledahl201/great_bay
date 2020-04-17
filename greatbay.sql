DROP DATABASE IF EXISTS greatbayDB;
CREATE DATABASE greatbayDB;
USE greatbayDB;
-- We will need to be able to pull from any of these tables below when the user inputs a certain type of thing they are lookign for
CREATE TABLE products (
    id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    productType VARCHAR (20) NOT NULL,
    title VARCHAR(100) NOT NULL,
    price INT,
    describe VARCHAR(500)
)


-- next i'll grab everything of a certain argument
SELECT * FROM products WHERE title = ""




-- function createProduct() {
--   console.log("Inserting a new product...\n");
--   var query = connection.query(
--     "INSERT INTO products SET ?",
--     {
--       productType:`${productType}`,
--       price: `${price}`,
--       title: `${title}`,
--       describe: `${describe}`
--     },
--     function(err, res) {
--       if (err) throw err;
--       console.log(res.affectedRows + " product inserted!\n");
--       // Call updateProduct AFTER the INSERT completes
--       updateProduct();
--     }
--   );

--   // logs the actual query being run
--   console.log(query.sql);
-- }

-- function updateProduct() {
--   console.log("Updating all quantities...\n");
--   var query = connection.query(
--     "UPDATE products SET ? WHERE ?",
--     [
--       {
--         price: `${price}`
--       },
--       {
--         title: `${title}`
--       }
--     ],
--     function(err, res) {
--       if (err) throw err;
--       console.log(res.affectedRows + " products updated!\n");
--       // Call deleteProduct AFTER the UPDATE completes
--       deleteProduct();
--     }
--   );

--   // logs the actual query being run
--   console.log(query.sql);
-- }

-- function deleteProduct() {
--   console.log("Deleting all done items...\n");
--   connection.query(
--     "DELETE FROM products WHERE ?",
--     {
--       items: `${title}`
--     },
--     function(err, res) {
--       if (err) throw err;
--       console.log(res.affectedRows + " products deleted!\n");
--       // Call readProducts AFTER the DELETE completes
--       readProducts();
--     }
--   );
-- }

-- function readProducts() {
--   console.log("Selecting all products...\n");
--   connection.query("SELECT * FROM products", function(err, res) {
--     if (err) throw err;
--     // Log all results of the SELECT statement
--     console.log(res);
--     connection.end();
--   });
-- }