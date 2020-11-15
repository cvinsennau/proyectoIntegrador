const bcrypt = require('bcryptjs')
const db = require('../database/models')
const users = db.User 


const op = db.Sequelize.Op

let controller = {
    login: function(req,res){
        if (req.session.user != undefined){
            return res.redirect('/')
        } else {
            return res.render("login");
        }
    },
    
    loginProcess: function(req,res){
        users.findOne({
            where: [{name: req.body.name}]
        })
        .then(function(user){
            if (user==null) {
                res.send("Usuario incorrecto")

            } else if (bcrypt.compareSync(req.body.password, user.password) == false) {
                
                res.send("Contraseña incorrecta")

            } else if (bcrypt.compareSync(req.body.password, user.password) == true) { 
                req.session.user = user 

                if(req.body.rememberme != undefined){
                    res.cookie('userId', user.id, { maxAge: 1000 * 60 * 60 * 24 * 30 * 365}); //cookie de 30 días
                }
                return res.redirect('/')
            }

        })
        .catch(e => console.log(e))
    },

    register: function(req,res){
        if (req.session.user != undefined){
            return res.redirect('/')
        } else {
            return res.render("register");
        }
    },

    store: function(req,res){
        
        // users.findOne({
        //     where: [{email: req.body.email }] 
        // })
        
        // .then(function(usuario){

            // if(usuario){
            //     let error = "El email ya se encuentra en uso."
            //     return res.render("register",{error: error})

            // } else {

                let user = {
                    name: req.body.name,
                    email: req.body.email,
                    password: bcrypt.hashSync(req.body.password,10),
                    birthdate: req.body.birthdate,
                    question2: req.body.securityQuestion,
                    securityAnswer: bcrypt.hashSync(req.body.password,10),
                    user_picture: req.body.user_picture,
                    //created_at: db.sequelize.literal("CURRENT_DATE"),
                    //updated_at: db.sequelize.literal("CURRENT_DATE")
                }
                        
                users.create(user); 
                
                return res.redirect('/account/login') 
            // }
            
        // })

        // .catch(e => console.log(e))        
        
    },   

    logout: function(req,res){
        req.session.destroy(); 
        res.clearCookie('userId');
        return res.redirect("/");
    },


}   

module.exports = controller;
