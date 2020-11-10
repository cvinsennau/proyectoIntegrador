module.exports = function (sequelize, dataTypes){

    let alias = "Post" //nombre para identificar al modelo - se busca como nombre en la tabla en plural en la base de datos.

    let cols = {
        id: {
            autoIncrement: true,
            primaryKey: true,
            type: dataTypes.INTEGER
        },
        id_user: {
            type: dataTypes.INTEGER,
            allowNull: false
        },
        image_user: {
            type: dataTypes.STRING,
            allowNull: false
        },
        text_post: {
            type: dataTypes.STRING,
            allowNull: false
        },
        date_post: {
            type: dataTypes.DATE,
            allowNull: false
        }
    } //nombre de las columnas de la tabla


    let config = {
        tableName: "post",
        timestamps: false
    }

    const Post = sequelize.define(alias, cols, config);
    
    Post.associate = function(models){
        Post.belongsTo(models.User,{
            as: "user",
            foreignKey: "id_user"
        })
        Post.hasMany(models.Comment, {
            as: "comments",
            foreignKey: "id_post"
        })
    };

    return Post
}