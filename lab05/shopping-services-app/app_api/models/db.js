var mongoose = require('mongoose');

var db = mongoose.connect("mongodb://localhost/shoppingdb");
var db = mongoose.connection;
db.on('error', console.error);
require('./productModel');