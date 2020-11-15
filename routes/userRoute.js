var express = require('express');
var router = express.Router();
let controller = require('../controllers/userController')
let questionController = require('../controllers/questionController')

router.get('/myProfile/:id', controller.myProfile)
router.get('/detail/:id', controller.userDetail);
router.get('/update/:id', controller.edit)
router.post('/update/:id', controller.update);

router.get('/update/:id', questionController.edit); 






module.exports = router;