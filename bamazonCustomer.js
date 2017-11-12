var mysql = require('mysql');
var inquirer = require("inquirer");

var connection = mysql.createConnection({
    host: "localhost",
    port: 3306,

    // Your username
    user: "conor",

    // Your password
    password: "password",
    database: "bamazon_db"
});

connection.connect(function (err) {
    if (err) throw err;
    //console.log("connected as id " + connection.threadId);
});


function readProducts() {
    console.log("ITEMS FOR SALE");
    console.log("----------------------------------\n"); 
    console.log("ID#  |  Product  |  Price\n");
    connection.query("SELECT * FROM products", function(err, res) {
        for (var i = 0; i < res.length; i++) {
           
            console.log(res[i].item_id +" | "+ res[i].product_name +" | "+ res[i].price);
            

        }
      //connection.end();
      selectItem();
    });
  }
  readProducts();

  var selectItem = function () {
  inquirer.prompt([
    {
        type: "input",
        name: "itemChoice",
        message: "Please type the ID# of the item you would like to buy ===>"
    },

    {
        type: "input",
        name: "itemAmount",
        message: "How many of the item you selected will you be buying today? ===>"
    },

]).then(function (answer) {
    console.log(answer.itemChoice);
    console.log(answer.itemAmount);
    connection.query(
        "SELECT stock_quantity FROM products where ? ",
        [
          {
            item_id: answer.itemChoice
          }
         
        ],
        function (err, res) {
            console.log(res)
            console.log(res[0].stock_quantity)
        if (res[0].stock_quantity < 1 ){
            console.log("INSUFFICIENT INVENTORY, please select another item");
            selectItem();
            
    }
    else{
        console.log("Item is available for purchase!")
    }
              
}   
)
      });
    }