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
var searchRouter = require('./routes/searchRoute');

var app = express();

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(session(
  {secret:'session',
  resave: false,
  saveUninitialized: true}
));
app.use(express.static(path.join(__dirname, 'public')));

app.use(function(req,res,next){
  if (req.session.user != undefined) {
    res.locals.user = req.session.user 
  return next();
  }
  return next ();
}) 

app.use(function(req, res, next){
  if(req.cookies.userId != undefined && req.session.user == undefined){ 
    db.User.findByPk(req.cookies.userId)             
    .then(function(user){
      req.session.user = user;
      res.locals.user = user;
  return next()
})

.catch(c => console.log(e))
} else {
  return next();
}
})

//Rutas
app.use('/', indexRouter);
app.use('/account', accountRouter)
app.use('/user', userRouter)
app.use('/post', postRouter)
app.use('/search', searchRouter)


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
