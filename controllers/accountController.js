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
            where: [{user: req.body.name}] //encontrar el email
        })
        .then(function(user){
            if (user.name==null) {
                return alert("Nombre de usuario incorrecto")
            } else if (bcrypt.compareSync(req.body.password, user.password == false)) {
                return alert("Contraseña incorrecta")
            } else if (bcrypt.compareSync(req.body.password, user.password == true)) { //compara lo escrito, con lo guardado en la base de datos
                req.session.user = user //guardar en sesion los datos del usuario
                return res.redirect('/') //redireccionar
            }

            if (req.body.rememberme != undefined){
                res.cookie('userId', user.id, {maxAge: 1000*60}) //pensar el tiempo de duracion en milisegundos
            }

        })
        .catch(e => console.log(e))
    },
    recover: function(req,res){
        if (compareSync(req.body.name, user.name == false)) {
            return alert("Nombre de usuario incorrecto");
        } else if (req.body.name, user.name == true) {
            //mostrar pregunta y respuesta de seguridad
        }
    },
    register: function(req,res){
        return res.render('register');
    },
    store: function(req,res){
        let user = {
            name: req.body.name,
            email: req.body.email,
            password: bcrypt.hashSync(req.body.password,10),
            birthdate: req.body.birthdate, //????? securtyanswer y question
        }

        users.create(user); //guardar 

        return res.redirect('/login') //redireccionar
    },    
    logout: function(req,res){
            req.session.destroy(); //destruye la relacion entre servidor y cliente
            return res.redirect("/");
    }
}   

module.exports = controller;
