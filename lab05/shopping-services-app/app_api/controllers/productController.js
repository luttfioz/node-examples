var mongoose = require('mongoose');
var Product = mongoose.model('Product');

var sendJSONresponse = function (res, status, content) {
    res.status(status);
    res.json(content);
};

module.exports.getProducts = function (req, res) {
    var code = req.query.code;

    if (code) {
        sendJSONresponse(res, 500, "Internal Server Error");
    } else {
        Product.
            find({}).
            sort({ name: "asc" }).
            exec(function (err, data) {
                if (err) {
                    return console.error(err);
                };
                sendJSONresponse(res, 200, data);
            });
    }
};

module.exports.getProductById = function (req, res) {
    var id = req.params.id;
    Product.
        find({ id: id }).
        sort({ name: "asc" }).
        exec(function (err, data) {
            if (err) {
                return console.error(err);
            };
            sendJSONresponse(res, 200, data);
        });
};

module.exports.addProduct = function (req, res, next) {
    var newId = Math.floor(Math.random() * 91 + 10);
    var newProduct = new Product(
        {
            "id": newId,
            "img": req.body.img,
            "alt": req.body.alt,
            "name": req.body.name,
            "price": req.body.price,
            "description": req.body.description
        });

    newProduct.save(function (err) {
        if (err) {
            return console.error(err);
        };
        sendJSONresponse(res, 200, newProduct);
    });
};

module.exports.deleteProductById = function (req, res) {
    var id = req.params.id;

    Product.
        find({ id: id }).
        exec(function (err, data) {
            if (err) {
                return console.error(err);
            };
            Product.deleteOne({ id: id }).
                exec(function (err, deleteResult) {
                    if (err) {
                        return console.error(err);
                    };
                    sendJSONresponse(res, 200, data);
                });
        });
};