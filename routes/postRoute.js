var express = require('express');
var router = express.Router();
let postController = require('../controllers/postController')

router.get('/detail/:id', postController.detail)
router.get('/add', postController.index)
router.post('/add', postController.store)

module.exports = router;