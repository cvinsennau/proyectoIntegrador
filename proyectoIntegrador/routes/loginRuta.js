var express = require('express');
var router = express.Router();
let controller = require('../controllers/loginController')

router.get('/',controller.index)

module.exports = router;
