module.exports = function (sequelize, dataTypes){

    let alias = "Question" //nombre para identificar al modelo - se busca como nombre en la tabla en plural en la base de datos.

    let cols = {
        id: {
            autoIncrement: true,
            primaryKey: true,
            type: dataTypes.INTEGER
        },
        question: {
            type: dataTypes.STRING,
            allowNull : false
        }
    }

    let config = {
        tableName : "question",
        timestamps:false, //Aclareción en caso de no explicitar created_at, deleted_at y updated_at
        // underscored: true, //Aclareción en caso que los timestamps usen guiones bajos en lugar de camelCase.
    };

    const Question = sequelize.define(alias, cols, config);

    Question.associate = function(models){
        Question.hasMany(models.User, {
            as: 'users',
            foreignKey: 'question2'
        })
    }

    return Question
}
