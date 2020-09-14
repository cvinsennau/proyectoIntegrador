var express = require('express');
var router = express.Router();
let controller = require('../controllers/miPerfilController')

router.get('/',controller.index)

module.exports = router;