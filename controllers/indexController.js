const db = require('../database/models');
const post = db.Post;
const user = db.User;

const op = db.Sequelize.Op;


let controller = {
    index: function(req,res){
        post.findAll({
            order:[
                ["date_post", "DESC"]
            ],
            include: [
                {association:"user"},
                {association:"comments", include: ["user"]},
            ]
        })
        .then(function(resultados){
            return res.render('index', {resultados});
        })
        .catch(function(error){
            console.log(error);
        })
    },
    search: function(req, res){
        let searchData = req.params.searchData;

        user.findAll({
            where: [
                { name : { [op.like] : "%" + searchData + "%"}}
            ]
        })
            .then(function(resultados){
                return res.render('searchResultados', {resultados})
            })
            .catch(function(error){
                console.log(error);
            })
    }
    // resultadoUsuarios: (req,res)=>{ // Buscador de Usuarios
    //     var busqueda = req.query.nombreUsuario // Saca de la url lo que el usuario escribio en el buscador
    //     user.findAll({ // buscame en la base de datos, tabla de usuarios ..
    //       where: [
    //         {email: {[op.like]:"%"+ busqueda + "%"}},
    //       ]
    //         //[OP.or]:[
    //           //{name:{[OP.like]: "%"+ busqueda + "%"}},  // por nombre O por email, si existe con cualquiera de las dos
    //         //]
    //     })
    //     .then (function(resultado){ // resultado es lo que trae de la bd el find all
    //       console.log(resultado)
    //       if (resultado.length >0 ){
    //       res.render("resultados", {resultado:resultado}) }// si hay un resultado mandame a la vista (donde voy a ver todos os usuarios que matchean con mi busqueda)
    //       else{
    //         console.log('No hay resultados')
    //         //res.redirect ('/playit/users') // sino hay resultado volveme a cargar la pag asi busco otra cosa
    //       }})
}

module.exports = controller;
