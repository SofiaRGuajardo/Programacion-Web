var express = require('express');
var router = express.Router();
var nodemailer = require('nodemailer');
var novedadesModel = require('../models/novedadesModel');

/* GET home page. */
router.get('/', async function(req, res, next) {
  var novedades = await novedadesModel.getNovedades();
  res.render('index',{
    novedades
  });
});

router.post('/', async (req, res, next) => {
  var nombre = req.body.nombre;
  var email = req.body.email;
  var consulta = req.body.consulta;

  var obj ={
    to: 'sofiarg94@gmail.com',
    subject: 'Consulta desde la ViajArg',
    html: nombre + " se contactó a través de ViajArg y realizó la siguiente consulta: <br>" +  consulta +"<br>Su email de contacto es: " + email
  }

var transport = nodemailer.createTransport({
  host: process.env.SMTP_HOST,
  port: process.env.SMTP_PORT,
  auth: {
    user: process.env.SMTP_USER,
    pass: process.env.SMTP_PASS
  }
})

var info = await transport.sendMail(obj);

res.render('index',{
  message: 'Consulta enviada',
});

});

module.exports = router;
