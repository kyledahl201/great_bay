var mysql = require("mysql");

var connection = mysql.createConnection({
  host: "localhost",

  // Your port; if not 3306
  port: 3306,

  // Your username
  user: "root",

  // Your password
  password: "password",
  database: "greatbay"
});

connection.connect(function(err) {
  if (err) throw err;
  console.log("connected as id " + connection.threadId);
  afterConnection();
});

function afterConnection() {
  connection.query("SELECT * FROM products", function(err, res) {
    if (err) throw err;
    console.log(res);
    createSong();
  });
}

function createProduct() {
    console.log("Inserting a new product...\n");
    var query = connection.query(
      "INSERT INTO products SET ?",
      {
        productType:`${productType}`,
        price: `${price}`,
        title: `${title}`,
        describe: `${describe}`
      },
      function(err, res) {
        if (err) throw err;
        console.log(res.affectedRows + " product inserted!\n");
        // Call updateProduct AFTER the INSERT completes
        updateProduct();
      }
    );
    // logs the actual query being run
    console.log(query.sql);
    }

    function updateProduct() {
        console.log("Updating all quantities...\n");
        var query = connection.query(
          "UPDATE products SET ? WHERE ?",
          [
            {
              price: `${price}`
            },
            {
              title: `${title}`
            }
          ],
          function(err, res) {
            if (err) throw err;
            console.log(res.affectedRows + " products updated!\n");
            // Call deleteProduct AFTER the UPDATE completes
            deleteProduct();
          }
        );
        // logs the actual query being run
        console.log(query.sql);
      }
      function deleteProduct() {
        console.log("Deleting all done items...\n");
        connection.query(
          "DELETE FROM products WHERE ?",
          {
            items: `${title}`
          },
          function(err, res) {
            if (err) throw err;
            console.log(res.affectedRows + " products deleted!\n");
            // Call readProducts AFTER the DELETE completes
            readProducts();
          }
        );
      }
      function readProducts() {
        console.log("Selecting all products...\n");
        connection.query("SELECT * FROM products", function(err, res) {
          if (err) throw err;
          // Log all results of the SELECT statement
          console.log(res);
          connection.end();
        });
      }