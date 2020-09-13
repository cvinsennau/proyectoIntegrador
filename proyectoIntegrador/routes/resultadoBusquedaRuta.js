var express = require('express');
var router = express.Router();
let controller = require('../controllers/resultadoBusquedaController')

router.get('/',controller.index)

module.exports = router;