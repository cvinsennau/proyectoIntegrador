var express = require('express');
var router = express.Router();
let controller = require('../controllers/detallePostController')

router.get('/detallePost',controller.index)

module.exports = router;