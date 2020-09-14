var express = require('express');
var router = express.Router();
let controller = require('../controllers/loginController')

<<<<<<< HEAD:proyectoIntegrador/routes/login.js
router.get('/login', controller.index)
=======
router.get('/',controller.index)
>>>>>>> 024a181dbe33aa4b64dd3d181312ce0a6197a6e2:proyectoIntegrador/routes/loginRuta.js

module.exports = router;
