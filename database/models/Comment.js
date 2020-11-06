module.exports = function (sequelize, dataTypes){

    let alias = "Comment" //nombre para identificar al modelo - se busca como nombre en la tabla en plural en la base de datos.

    let cols = {
        id: {
            autoIncrement: true,
            primaryKey: true,
            type: dataTypes.INTEGER
        },
        id_post: {
            type: dataTypes.INTEGER,
            allowNull: false
        },
        id_user_comment: {
            type: dataTypes.INTEGER,
            allowNull: false
        },
        text_comment: {
            type: dataTypes.STRING,
            allowNull: false
        },
        date_comment: {
            type: dataTypes.DATE,
            allowNull: false
        }
    } //nombre de las columnas de la tabla

    let config = {
        tableName: "comments",
        timestamps: false
    }

    const Comment = sequelize.define(alias, cols, config);
    
    Comment.associate = function(models){
        Comment.hasMany(models.Post, {
            as: "posts",
            foreignKey: "id_user_comment"
        })
    }

    return Comment
}