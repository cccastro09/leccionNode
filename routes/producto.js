var express = require('express');
var router = express.Router();
const knex = require('../db/knex');
router.get('/', (req, res) => {
    console.log("hola");
    knex('productos')
    .select()
    .then(producto =>{
        res.render('producto/index', {objProducto: producto});
    });


});

module.exports = router;
