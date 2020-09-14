var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');

//Declaración de Rutas
var indexRouter = require('./routes/index');
var usersRouter = require('./routes/usersRuta');
var registroRouter = require('./routes/registroRuta');
var loginRouter = require('./routes/loginRuta');
var perfilRouter = require('./routes/miPerfilRuta');
var agregarPostRouter = require('./routes/agregarPostRuta');
var detallePostRouter = require('./routes/detallePostRuta');
var detalleUserRouter = require('./routes/detalleUserRuta');
var resultadoBusquedaRouter = require('./routes/resultadoBusquedaRuta');
var pruebaRouter = require('./routes/pruebaRuta')

var app = express();

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

//Rutas
app.use('/home', indexRouter);
app.use('/users', usersRouter);
app.use('/registracion', registroRouter);
app.use('/login', loginRouter);
app.use('/miPerfil', perfilRouter);
app.use('/agregarPost', agregarPostRouter);
app.use('/detallePost', detallePostRouter);
app.use('/detalleUser', detalleUserRouter);
app.use('/resultadoBusqueda', resultadoBusquedaRouter);
app.use('/prueba', pruebaRouter);


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
