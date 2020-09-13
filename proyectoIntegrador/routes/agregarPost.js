var express = require('express');
var router = express.Router();
let controller = require('../controllers/agregarPostController')

router.get('/agregarPost', controller.index)

module.exports = router;
