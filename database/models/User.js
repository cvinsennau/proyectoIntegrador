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
        securityQuestion: {
            type: dataTypes.INTEGER,
            allowNull: true
        },
        securityAnswer: {
            type: dataTypes.STRING,
            allowNull: true
        }
    } //nombre de las columnas de la tabla


    let config = {
        
    }

    const User = sequelize.define(alias, cols, config);

    return User
}