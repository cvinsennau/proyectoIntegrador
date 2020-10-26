var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var session = require ('express-session')
var logger = require('morgan');

//Declaración de Rutas
var indexRouter = require('./routes/index');
var userRouter = require('./routes/userRoute');
var accountRouter = require('./routes/accountRoute');
var postRouter = require('./routes/postRoute');

var app = express();

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(session(
  {secret:'pepito123',
  resave: false,
  saveUninitialized: true}
));
app.use(express.static(path.join(__dirname, 'public')));
app.use(function(req,res,next){
  if (req.session.user != undefined) {
    res.locals.user = req.session.user //locals deja disponible los datos para todas las vistas
  }
  return next ();
})

//Rutas
app.use('/', indexRouter);
app.use('/account', accountRouter)
app.use('/user', userRouter)
app.use('/post', postRouter)

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
