const bcrypt = require('bcryptjs')
const db = require('../database/models')
const users = db.User //nombre del alias

const op = db.Sequelize.Op

let controller = {
    login: function(req,res){
        return res.render('login');
    },
    loginProcess: function(req,res){
        users.findOne({
            where: [{email: req.body.email }] //encontrar el email
        })
        .then(function(user){
            if (user==null) {
                return alert("Email incorrecto")
            } else if (bcrypt.compareSync(req.body.password, user.password == false)) {
                return alert("Contraseña incorrecta")
            } else if (bcrypt.compareSync(req.body.password, user.password == true)) { //compara lo escrito, con lo guardado en la base de datos
                req.session.user = user //guardar en sesion los datos del usuario
                return res.redirect('/') //redireccionar
            }
        })
        .catch(e => console.log(e))
        
    },
    register: function(req,res){
        return res.render('register');
    },
    store: function(req,res){
        let user = {
            name: req.body.name,
            email: req.body.email,
            password: bcrypt.hashSync(req.body.password,10)
        }

        users.create(user); //guardar 

        return res.redirect('/login') //redireccionar
    }, 
}   

module.exports = controller;
