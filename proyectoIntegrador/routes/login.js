var express = require('express');
var router = express.Router();
let controller = require('../controllers/loginController')

router.get('/login', controller.index)

module.exports = router;
