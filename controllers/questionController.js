const db = require('../database/models');
const question = db.Question //nombre del alias

const op = db.Sequelize.Op;

let controller = {
    index: function(req, res){
        question.findAll({
            order:[
                ["id", "ASC"]
            ],
            include: [
                {association:"users"},
            ]
        })

        .then(resultados=>{
            return res.render("register", {resultados: resultados})
        })
        .catch(function(error){
            console.log(error)
        })
    },
}

module.exports = controller;