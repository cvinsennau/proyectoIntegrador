//let db = require('../database/models');
//let sequelize = db.sequelize
// conectar con la base de datos


let controller = {
    index: function(req,res){
        return res.render('index');
    }

}
module.exports = controller;
