const bcrypt = require('bcryptjs')
const db = require('../database/models')
const users = db.User 


const op = db.Sequelize.Op

let controller = {
    login: function(req,res){
        return res.render('login');
    },
    loginProcess: function(req,res){
        users.findOne({
            where: [{user: req.body.name}] 
        })

        .then(function(user){
            if (user.name==null) {
                res.send("Usuario incorrecto")
            } else if (bcrypt.compareSync(req.body.password, user.password == false)) {
                res.send("Contraseña incorrecta")
            } else if (bcrypt.compareSync(req.body.password, user.password == true)) { 
                req.session.user = user 

                if(req.body.rememberme != undefined){
                    res.cookie('userId', user.id, { maxAge: 1000 * 60 * 60 * 60}); 
                }
            
                return res.redirect('/')
            }

        })
        .catch(e => console.log(e))
    },
    recover: function(req,res){
        if (compareSync(req.body.name, user.name == false)) {
            res.send("Usuario incorrecto");
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
            birthdate: req.body.birthdate, 
            securityQuestion: req.body.securityQuestion,
            securityAnswer: req.body.securityAnswer,
            //created_at: db.sequelize.literal("CURRENT_DATE"),
            //updated_at: db.sequelize.literal("CURRENT_DATE")
        }

        users.create(user); 
        return res.redirect('/login') 
    },   
    logout: function(req,res){
            req.session.destroy(); //destruye la relacion entre servidor y cliente
            return res.redirect("/");
    }
}   

module.exports = controller;
