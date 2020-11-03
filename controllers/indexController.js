const db = require('../database/models');
const post = db.Post;
const user = db.User;

const op = db.Sequelize.Op;


let controller = {
    index: function(req,res){
        post.findAll()
        .then(function(resultados){
            return res.render('index', {resultados});
        })
        .catch(function(error){
            console.log(error);
        })
    },
    show: function(req,res){
        let primaryKey = req.params.id;
        user.findByPk(primaryKey)
            .then(function(user){
                return res.render('index', {user});
            })
            .catch(function(error){
                console.log(error);
            })
    }

}
module.exports = controller;
