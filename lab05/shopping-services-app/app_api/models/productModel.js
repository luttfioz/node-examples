var mongoose = require('mongoose');
var productSchema = mongoose.Schema({
    id: String,
    img: String,
    alt: String,
    name: String,
    price: String,
    description: String
});

mongoose.model('Product', productSchema);