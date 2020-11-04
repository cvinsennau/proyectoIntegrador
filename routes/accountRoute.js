var express = require('express');
var router = express.Router();
let accountController = require('../controllers/accountController')

router.get('/login',accountController.login);
router.post('/login', accountController.loginProcess);
router.get('/signup',accountController.register);
router.post('/signup', accountController.store);
router.post('/logout', accountController.logout)

module.exports = router;