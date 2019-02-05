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

router.get('/ingreso', (req, res) => {
  res.render('producto/ingreso' );
});

router.post('/guardar', (req, res) => {

    knex('productos')
      .returning('id')
      .insert({tipo : req.body.tipo, fechacaducidad : req.body.fechacaducidad, nombre: req.body.nombre, fechaproduccion: req.body.fechaproduccion, precio: req.body.precio})
      .then(ids =>  {
        const id = ids[0];
        res.redirect(`/`);

  });
});



router.delete('/:id',(req,res)=>{
  const id=req.params.id;
  console.log('deleting...');

 if(typeof id != 'undefined'){
    knex('productos')
      .where('id',id)
      .del()
      .then(productos => {
        console.log('delete id: '+id);
        res.redirect('/');
    });

  }else{

    console.log('error invalid delete ');
    res.status(500);
    res.render('error', {
      message: 'Invalid ID delete '
    });
  }
});

module.exports = router;
