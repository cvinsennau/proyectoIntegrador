var express = require('express');
var router = express.Router();
let postController = require('../controllers/postController')

router.get('/detail/:id', postController.detail)
router.post('/detail/:id', postController.newComment)

router.get('/add', postController.index)
router.post('/add', postController.store)

router.get("/editPost/:id",postController.editPost);
router.post("/editPost/:id",postController.updatingPost)

router.get("/deletePost/:id", postController.deleteView)
router.post("/deletePost/:id", postController.deletePost)

module.exports = router;