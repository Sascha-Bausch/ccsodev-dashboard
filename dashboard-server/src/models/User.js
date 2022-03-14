// sequelize-model -> creates TABLE 'User' with attributes 'id', 'email', 'password'

module.exports = (sequelize, DataTypes) =>
    sequelize.define('User', {
        email: {
            type: DataTypes.STRING,
            unique: true
        },
        password: DataTypes.STRING
    })
    