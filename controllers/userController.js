const db = require('../database/models')
const user = db.User; //Debe ser el alias del modelo.
const post = db.Post;

const question = db.Question;

const op = db.Sequelize.Op;

let controller = {
    myProfile: function(req,res){
        if (req.session.user == undefined) {
            return res.redirect("/")
        }
        
        let mainUser = req.session.user.id;
        
        user.findOne({
            where: [
                {id: mainUser}
            ],
            include: [
                {association:"posts", include: ["user"]}
            ]
        })
            .then(function(resultados){
                //return res.send(resultados)
                req.session.user = resultados
                return res.render('myProfile', {resultados:resultados})
            })
            .catch(function(error){
                console.log(error)
            })
    },

    update: function(req,res){
        if (req.session.user == undefined) {
            return res.redirect("/")
        }
        
        let mainUser = {
            name: req.body.name,
            email: req.body.email,
            password: bcrypt.hashSync(req.body.password,10),
            birthdate: req.body.birthdate,
            question2: req.body.securityQuestion,
            securityAnswer: bcrypt.hashSync(req.body.password,10),
            //created_at: db.sequelize.literal("CURRENT_DATE"),
            //updated_at: db.sequelize.literal("CURRENT_DATE")
        }

        user.update({
            mainUser
        },
        {
            where: {id: req.params.id}
        });
           
        return res.redirect('/myProfile') 
    }, //VER SI FUNCIONA ESTA MIERDA

    userDetail: function(req,res){
        let primaryKey = req.params.id;

        user.findByPk(req.params.id)

            .then(function(resultados){

                post.findAll({
                    order: [
                        ['date_post', 'ASC']
                    ],
                    where: [{id_user: primaryKey}],                    
                    include: [
                        {association: "user"},
                        {association: "comments"}
                ],
            
            })

                .then(function(resultadosPosteos){
                    //return res.send(resultados)
                    return res.render('detailUser', {
                        resultados:resultados, resultadosPosteos:resultadosPosteos})
                })  
            .catch(function(error){
                console.log(error)
            })
        })

        
    }
}

module.exports = controller;


    // add: function(req,res){
    //     if (req.session.user == undefined) {
    //         return res.redirect("/")
    //     }

        // question.findAll()
        //     .then(function(question){
        //         //return res.send(question)
        //         return res.render('register',{ question })
        //     })
        //     .catch(function (error) {
        //         console.log(error);
        //     })