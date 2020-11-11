var express = require('express');
var router = express.Router();
let controller = require('../controllers/indexController');

router.get('/', controller.index);

//router.get('/resultadosUsuarios', controller.resultados);

module.exports = router;