var express = require('express');
var router = express.Router();
let controller = require('../controllers/userController')

router.get('/myProfile', controller.myProfile)
router.get('/detail/:id', controller.userDetail);


module.exports = router;