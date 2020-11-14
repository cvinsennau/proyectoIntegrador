var express = require('express');
var router = express.Router();
let controller = require('../controllers/userController')

router.get('/myProfile/:id', controller.myProfile)
router.get('/detail/:id', controller.userDetail);
router.post('/update/:id', controller.update);


module.exports = router;