const db = require('../database/models')
const user = db.User; //Debe ser el alias del modelo.

const question = db.Question;

const op = db.Sequelize.Op;

let controller = {
    myProfile: function(req,res){
        return res.render('myProfile');
    },
    userDetail: function(req,res){
        return res.render('detailUser');
    },
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
