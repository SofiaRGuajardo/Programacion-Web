var express = require('express');
var router = express.Router();
var nodemailer = require('nodemailer');

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Express' });
});

router.post('/', async (req, res, next) => {

  var nombreapellido = req.body.nombreapellido;
  var email = req.body.email;
  var carrera = req.body.carrera;
  var universidad = req.body.universidad;
  var mensaje = req.body.mensaje;

  // console.log(req.body);

  var obj ={
    to: 'sofiarg94@gmail.com',
    subject: 'Contacto desde la Web',
    html: nombreapellido + " " + " se contactó y quiere más información sobre la carrera " + carrera + " de la universidad " + universidad + " .<br> Este es su correo: " + email + ". <br> Además, hizo el siguiente comentario: " + mensaje
  }
  
  var transporter = nodemailer.createTransport({
    host: process.env.SMTP_HOST,
    port: process.env.SMTP_PORT,
    auth: {
      user: process.env.SMTP_USER,
      pass: process.env.SMTP_PASS
    }
  })
  var info = await transporter.sendMail(obj);

  res.render('index',{
    messager: 'Mensaje enviado correctamente',
  });

});
module.exports = router;
