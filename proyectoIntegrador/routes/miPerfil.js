var express = require('express');
var router = express.Router();
let controller = require('../controllers/miPerfilController')

router.get('/miPerfil',controller.index)

module.exports = router;