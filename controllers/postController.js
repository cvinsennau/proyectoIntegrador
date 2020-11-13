const { Sequelize } = require('../database/models');
const db = require('../database/models');
const post = db.Post;

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
                return res.render ('detailPost',{resultados});
            })
            .catch(function(error){
                console.log(error)
            })
    },
    store: function(req,res){
        let newPost = {
            id_user: res.locals.user.id,
            text_post: req.body.text_post,
            image_user: req.body.image_user,
            date_post: db.sequelize.literal("CURRENT_DATE"),
        }

        post.create(newPost);   //! No lo guarda
        
        return res.redirect('/');
    },
}

module.exports = controller;
