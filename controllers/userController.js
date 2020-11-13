const db = require('../database/models')
const user = db.User; //Debe ser el alias del modelo.

const question = db.Question;

const op = db.Sequelize.Op;

let controller = {
    myProfile: function(req,res){
        let user = req.session.user;
        //! COMPLETAR
    },
    userDetail: function(req,res){
        let primaryKey = req.params.id;

        user.findOne({
            where: [
                { id: primaryKey}
            ],
            include: [
                {association:"posts", include: ["user"]}
            ]
        })
            .then(function(resultados){
                //return res.send(resultados)
                return res.render ('detailUser',{resultados});
            })
            .catch(function(error){
                console.log(error)
            })
    }
    // add: function(req,res){
    //     question.findAll()
    //         .then(function(question){
    //             //return res.send(question)
    //             return res.render('register',{ question })
    //         })
    //         .catch(function (error) {
    //             console.log(error);
    //         })
    // }
}
module.exports = controller;
