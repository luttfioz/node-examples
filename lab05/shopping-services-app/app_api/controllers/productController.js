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