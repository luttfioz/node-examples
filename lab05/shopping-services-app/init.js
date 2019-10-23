var mongoose = require('mongoose');

var db = mongoose.connection;
db.on('error', console.error);
mongoose.connect('mongodb://localhost/shoppingdb');

var productSchema = mongoose.Schema({
    id: String,
    img: String,
    alt: String,
    name: String,
    price: String,
    description: String

});

var Product = mongoose.model('Product', productSchema);

var product1 = new Product({
    id: "0",
    img: "tablet",
    alt: "img-tablet",
    name: "10-Inch Tablet",
    price: "269",
    description: "Android 4.3 Jelly Bean, 10.1-inch Full HD (1920 x 1200) Display"
});

var product2 = new Product({
    id: "1",
    img: "shoe",
    alt: "img-shoe",
    name: "Running Shoe",
    price: "48",
    description: "Synthetic and Mesh, Imported, Rubber sole, Flex Film welded upper, HydraMAX moisture-wicking collar lining"
});

var product3 = new Product({
    id: "12",
    img: "watch",
    alt: "img-watch",
    name: "Slim Bracelet Watch",
    price: "48",
    description: "A narrow gold-tone bracelet supports the round case of this  watch, which features three rhinestones marking each hour and a sparkling halo on the bezel"
});

product1.save(function (err, product1) {
    if (err) { return console.error(err); }
});
product2.save(function (err, product2) {
    if (err) { return console.error(err); }
});
product3.save(function (err, product3) {
    if (err) { return console.error(err); }
});

console.log("insert completed");

