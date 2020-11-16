const { Sequelize } = require('../database/models');
const db = require('../database/models');
const post = db.Post;
const comment = db.Comment;

const op = db.Sequelize.Op;

let controller = {
    index: function(req, res){
        return res.render('addPost');
    },
    detail: function(req,res){
        let primaryKey = req.params.id;

        post.findOne({
            where: [
                { id: primaryKey}
            ],
            include: [
                {association:"user", include: ["comments"]},
                {association:"comments", include: ["user"]}
            ]
        })

        .then(function(resultados){

            comment.findAll({
                order: [
                    ['date_comment', 'DESC']
                ],
                where: [{id_post: req.params.id}],                    
                include: [
                    {association: "user"},
                ],
            })

            .then(function(resultadosComentarios){
                //return res.send(resultados)
                //return res.send(resultadosComentarios)
                return res.render ('detailPost',{resultados:resultados, resultadosComentarios:resultadosComentarios});
            })
            .catch(function(error){
                console.log(error)
            })
        })
    },
    store: function(req,res){
        if (req.session.user == undefined) {
            return res.redirect("/")
        }

        let newPost = {
            id_user: res.locals.user.id,
            text_post: req.body.text_post,
            image_user: req.body.image_user,
            date_post: db.sequelize.literal("CURRENT_DATE"),
        }

        post.create(newPost);   
        return res.redirect('/');
    },
    newComment: function(req, res){
        let newComment = {
            text_comment: req.body.text_comment,
            id_post: req.params.id,
            id_user_comment: res.locals.user.id,
            date_comment: db.sequelize.literal("CURRENT_DATE"),
        }
        //return res.send(newComment)
        comment.create(newComment)

        var idPost = req.params.id

        return res.redirect(idPost)
    },
    editPost: function(req, res){
        if(req.session.user) {
          db.Post.findByPk(req.params.id)
          .then(function(editPost){
            if(req.session.user.id==editPost.id_user){
                return res.render("editPost",{editPost:editPost})
            }
          })
          .catch(function (error) {
            console.log(error);
        })
        } else {
            res.redirect('/')
        }

    },
    updatingPost: function(req, res) {
        let text_post = {
            text_post: req.body.text_post
        }
        db.Post.update(
            text_post, {
            where: {id: req.params.id}
        })
        // return res.send(text_post)
        return res.redirect("/post/detail/" + req.params.id);


    },
    deletePost: function(req,res){
        // if(req.session.user.id == req.body.id_user){
            let idPostToDelete = req.params.id
            db.Post.destroy({
                where:{
                    id:idPostToDelete
                }
            })
            return res.redirect("/")
        // } else {
        //     return res.redirect("/account/login")
        //     // return res.redirect("/post/detail/" + req.body.id)
        // }
    },
    deleteView: function(req,res){
        db.Post.findByPk(req.params.id)
            .then(function(resultados){
                return res.render ('deletePost',{resultados});
            })
            .catch(function(error){
                console.log(error)
            })
    }
}

module.exports = controller;
