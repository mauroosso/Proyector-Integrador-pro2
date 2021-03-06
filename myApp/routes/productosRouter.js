var express = require('express');
var router = express.Router();

const productosControllers = require('../controllers/productosControllers')

const multer = require('multer');
const path = require('path');


let storage = multer.diskStorage({
    destination : (req, file, cb) => {
        cb(null, path.join(__dirname, '../public/images/prodctos'))
    },
    filename : (req, file, cb) => {
      
        /*          name campoDelForm          -   26052022                 .png  */
        cb(null, file.fieldname + '-' + Date.now() + path.extname(file.originalname))
    }
});

let upload = multer({ storage : storage})

router.get('/product/:id', productosControllers.detalleProducto)
router.get('/agregarProducto', productosControllers.agregarProducto)
router.post('/product/:id',productosControllers.agregarComentario)
//router.post('/agregarProducto',productosControllers.productoSubmit);
router.get('/editarProducto', productosControllers.editarProducto)
router.get('/busquedaProducto', productosControllers.busquedaProducto)
router.post('/agregarProducto',upload.single("imgProducto") , productosControllers.productoSubmit);


module.exports = router;
