var mysql = require('mysql'),
    prompt = require('prompt'),
    table = require('console.table');

var connection = mysql.createConnection({
  host: "localhost",
  port: 3306,
  user: "root",
  password: "",
  database: "bamazon"
});

connection.connect(function(err){
  if (err) throw err;
  console.log("Connected as id " + connection.threadId);
});

var start = function(){
  console.log("Welcome to Nick's Fine-ass Clothin Store!");
  connection.query('SELECT * FROM Products', function(err, res){
    if (err) throw err;
    console.table(res);
    console.log('Select a product by ID:');

  }); 

  prompt.start();
  prompt.get(['id', 'quantity'], function(err, result){
    var orderId = parseInt(result.id);
    var quantity = parseInt(result.quantity);
    console.log('Order received, processing...');
    console.log('Product ID: ' + orderId);
    console.log('Order Quantity: ' + quantity);

    var query = 'SELECT ProductName FROM Products WHERE ?';
    connection.query(query, {id: orderId}, function(err, res){
      console.log(res);
    });

  });

  connection.end();
}

start();
