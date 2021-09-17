var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');

var indexRouter = require('./routes/index');//routes/index.js
var cubismoRouter = require('./routes/cubismo');//routes/cubismo.js
var futurismoRouter = require('./routes/futurismo');//routes/futurismo.js
var dadaismoRouter = require('./routes/dadaismo');//routes/dadaismo.js
var popartRouter = require('./routes/popart');//routes/popart.js
var galeriaRouter = require('./routes/galeria');//routes/galeria.js
// var usersRouter = require('./routes/users');

var app = express();

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'hbs');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

app.use('/', indexRouter);
app.use('/cubismo', cubismoRouter);
app.use('/futurismo', futurismoRouter);
app.use('/dadaismo', dadaismoRouter);
app.use('/popart', popartRouter);
app.use('/galeria', galeriaRouter);
// app.use('/users', usersRouter);

app.get('/prueba', function(req,res,next){
  res.send('página de prueba')
})
app.get('/prueba2', function(req,res,next){
  res.send('Hola soy otro texto')
})

// catch 404 and forward to error handler
app.use(function(req, res, next) {
  next(createError(404));
});

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;
