var express = require('express');
var router = express.Router();
let controller = require('../controllers/resultadoBusquedaController')

router.get('/resultados',controller.index)

module.exports = router;