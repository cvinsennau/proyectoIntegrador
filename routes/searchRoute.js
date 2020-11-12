var express = require('express');
var router = express.Router();
let controller = require('../controllers/searchController')

router.get('/user', controller.searchUser)
router.get('/post', controller.searchPost)

module.exports = router;