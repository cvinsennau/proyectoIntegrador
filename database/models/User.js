module.exports = function (sequelize, dataTypes){

    let alias = "User" //nombre para identificar al modelo - se busca como nombre en la tabla en plural en la base de datos.

    let cols = {
        id: {
            autoIncrement: true,
            primaryKey: true,
            type: dataTypes.INTEGER
        },
        name: {
            type: dataTypes.STRING,
            allowNull: false
        },
        email: {
            type: dataTypes.STRING,
            allowNull: false
        },
        password: {
            type: dataTypes.STRING,
            allowNull: false
        },
        birthdate: {
            type: dataTypes.DATE,
            allowNull: false
        },
        question2: {
            type: dataTypes.INTEGER,
            allowNull: true
        },
        securityAnswer: {
            type: dataTypes.STRING,
            allowNull: true
        },
        created_at: {
            type: dataTypes.DATE,
            allowNull: true
        },
        updated_at: {
            type: dataTypes.DATE,
            allowNull: true
        },
        user_picture:{
            type: dataTypes.STRING
        },
        following: {
            type: dataTypes.INTEGER,
            allowNull: true
        },
        followers: {
            type: dataTypes.INTEGER,
            allowNull: true
        }
    } 


    let config = {
        tableName: "user",
        timestamps: false
    }

    const User = sequelize.define(alias, cols, config);
    
    User.associate = function(models){
        User.hasMany(models.Post, {
            as: "posts",
            foreignKey: "id_user"
        })
        User.hasMany(models.Comment, {
            as: "comments",
            foreignKey: "id_user_comment"
        })
        User.belongsTo(models.Question, {
            as: 'question',
            foreignKey: 'question2'
        })
    }

    return User
}