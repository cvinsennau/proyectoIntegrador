var express = require('express');
var router = express.Router();
let postController = require('../controllers/postController')
let searchController = require('../controllers/searchController')

router.get('/detail/:id', postController.detail)
router.get('/add', postController.add)

module.exports = router;