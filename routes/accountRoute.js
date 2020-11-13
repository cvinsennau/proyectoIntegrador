var express = require('express');
var router = express.Router();
let accountController = require('../controllers/accountController')
let questionController = require('../controllers/questionController')

router.get('/login',accountController.login);
router.post('/login', accountController.loginProcess);

router.post('/signup', accountController.store);
router.get('/signup', questionController.index); 

//router.get('/recover',accountController.recover);

router.post('/logout', accountController.logout)

module.exports = router;