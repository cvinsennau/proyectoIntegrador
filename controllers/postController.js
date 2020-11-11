const { Sequelize } = require('../database/models');
const db = require('../database/models');
const post = db.Post;
const user = db.User;

const op = db.Sequelize.Op;

let controller = {
    detail: function(req,res){
        return res.render('detailPost');
    },
    add: function(req,res){
        return res.render('addPost');
    },
    search: function(req, res){ // Buscador de Usuarios
        let searchData = req.query.search; // Saca de la url lo que el usuario escribio en el buscador

        user.findAll({  // buscame en la base de datos, tabla de usuarios ..
            where: Sequelize.or(
                { name : { [op.like] : "%" + searchData + "%"}},
                {email: {[op.like]: "%" + searchData + "%"}}  // por nombre O por email, si existe con cualquiera de las dos
            )
        })
            .then(function(resultados){
                //return res.send(resultados)
                return res.render('searchResult', {resultados})
            })
            .catch(function(error){
                console.log(error);
            })
    },
}

module.exports = controller;
