var express = require('express');
var router = express.Router();
var productController = require('../controllers/productController');

router.get('/products', productController.getProducts);
router.get('/products/:id', productController.getProductById);
router.post('/products', productController.addProduct);
router.delete('/products/:id', productController.deleteProductById);
module.exports = router;