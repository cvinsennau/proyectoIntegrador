var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');

var indexRouter = require('./routes/index');
var usersRouter = require('./routes/users');
var registroRouter = require('./routes/registro');
var loginRouter = require('./routes/login');
var perfilRouter = require('./routes/miPerfil');
var agregarPostRouter = require('./routes/agregarPost');
var detallePostRouter = require('./routes/detallePost');
var detalleUserRouter = require('./routes/detalleUser');
var resultadoBusquedaRouter = require('./routes/resultadoBusqueda');

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
app.use('/', indexRouter);
app.use('/users', usersRouter);
app.use('/registracion', registroRouter);
app.use('/login', loginRouter);
app.use('/miPerfil', perfilRouter);
app.use('/agregarPost', agregarPostRouter);
app.use('/detallePost', detallePostRouter);
app.use('/detalleUser', detalleUserRouter);
app.use('/resultadoBusqueda', resultadoBusquedaRouter);


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
