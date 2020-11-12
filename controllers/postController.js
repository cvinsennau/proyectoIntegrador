const { Sequelize } = require('../database/models');
const db = require('../database/models');
const post = db.Post;
const user = db.User;

const op = db.Sequelize.Op;

let controller = {
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
    add: function(req,res){
        return res.render('addPost');
    },
}

module.exports = controller;
