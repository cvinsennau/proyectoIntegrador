const { Sequelize } = require('../database/models');
const db = require('../database/models');
const post = db.Post;
const user = db.User;

const op = db.Sequelize.Op;

let controller = {    
    searchUser: function(req, res){ 
        let searchData = req.query.search; 

        user.findAll({  
            where: Sequelize.or(
                {name : { [op.like] : "%" + searchData + "%"}},
                {email: {[op.like]: "%" + searchData + "%"}}  
            )
        })
            .then(function(resultados){
                return res.render('searchResultUsers', {resultados})
            })

            .catch(function(error){
                console.log(error);
            })
    },

    searchPost: function(req, res){ 
        let searchData = req.query.search; 
            
        post.findAll({
            order: [
                ['date_post', 'ASC']
            ],
            where: Sequelize.or(
                {text_post: { [op.like] : "%" + searchData + "%"}}
            ),
            limit: 20,
            include: [
                    {association: "user"},
                    {association: "comments"}
            ],
            })

            .then(function(resultados){
                return res.render('searchResultPosts', {resultados: resultados})
            })

            .catch(function(error){
                console.log(error)
            })
    },
    
}

module.exports = controller;
