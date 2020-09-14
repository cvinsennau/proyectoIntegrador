var express = require('express');
var router = express.Router();
let controller = require('../controllers/detalleUserController')

router.get('/',controller.index)

module.exports = router;