var express = require('express');
var router = express.Router();
let accountController = require('../controllers/accountController')
let questionController = require('../controllers/questionController')

router.get('/login',accountController.login);
router.post('/login', accountController.loginProcess);
router.get('/recover',accountController.recover);
router.get('/signup',accountController.register);
router.post('/signup', accountController.store);
router.get('/signup', questionController.index); 
router.post('/logout', accountController.logout)

module.exports = router;