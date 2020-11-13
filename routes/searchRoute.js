var express = require('express');
var router = express.Router();
let controller = require('../controllers/searchController')

router.get('/', controller.search)

module.exports = router;