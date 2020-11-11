var express = require('express');
var router = express.Router();
let controller = require('../controllers/postController')

router.get('/detail/:id', controller.detail)
router.get('/add', controller.add)
router.get('/search', controller.search)

module.exports = router;