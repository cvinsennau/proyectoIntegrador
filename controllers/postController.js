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
                    ['date_comment', 'ASC']
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
    
    






}

module.exports = controller;
