const db = require('../database/models');
const post = db.Post;
const user = db.User;

const op = db.Sequelize.Op;


let controller = {
    index: function(req,res){
        post.findAll({
            include: [
                "user",
                "comment"
            ]
        })
        .then(function(resultados){
            return res.render('index', {resultados});
        })
        .catch(function(error){
            console.log(error);
        })
    },

}
module.exports = controller;
