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
        

                let user = {
                    name: req.body.name,
                    email: req.body.email,
                    password: bcrypt.hashSync(req.body.password,10),
                    birthdate: req.body.birthdate,
                    question2: req.body.question2,
                    securityAnswer: bcrypt.hashSync(req.body.password,10),
                    user_picture: req.body.user_picture,
                    //created_at: db.sequelize.literal("CURRENT_DATE"),
                    //updated_at: db.sequelize.literal("CURRENT_DATE")
                }
                        
                users.create(user); 
                
                
                return res.redirect('/account/login') 

    },   

    logout: function(req,res){
        req.session.destroy(); 
        res.clearCookie('userId');
        return res.redirect("/");
    },

    validatingUser: function(req,res){
        res.render('validatingUser')
    },

    validatingUserProcess:function(req,res){
        db.User.findOne (
            {
                include: [
                    {association:"question"}
            ],
                where: [
                    {name: req.body.name}
                ]
            }
        )
        .then(function(user){
            if (user == null){
                res.render("validatingUser", {errorMessage: "Hubo un error"})
            } else {
                    if (user.question2 == 1){
                    questionText = "Cuál es tu comida favorita?"
                } else if (user.question2 == 2){
                    questionText = "Cómo se llamaba tu escuela primaria?"
                } else if (user.question2 == 3){
                    questionText = "Cómo se llama tu mascota?"
                } else if (user.question2 == 4){
                    questionText = "Cuál es el apellido de tu mamá?"
                }
                res.render("validatingUserQuestion", {user:user, questionText:questionText})
            }
        })
    },

    validatingUserQuestion: function(req,res){
        db.User.findOne(
            {
                include: [
                    {association:"question"}
                ],
                where: [
                    {
                        id: req.body.id,
                        securityAnswer: req.body.securityAnswer
                    }
                ]
            }
        )
         .then(function(securityAnswer){
             if (securityAnswer == null){
                 req.session.user = undefined;
                 res.render("login", {errorMessage: "Hubo un error"})
             } else {
                 req.session.user = securityAnswer;
                 res.redirect("/user/update/" + req.session.user.id)
             }
         })
    }


}   

module.exports = controller;
