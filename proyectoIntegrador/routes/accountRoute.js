var express = require('express');
var router = express.Router();
let controller = require('../controllers/accountController')

router.get('/login',controller.login)
router.get('/signup',controller.register)

module.exports = router;