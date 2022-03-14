const fs = require('fs')        // nodejs
const path = require('path')
const Sequelize = require('sequelize')
const config = require('../config/config')
const db = {}

const sequelize = new Sequelize(
    config.db.database,
    config.db.user,
    config.db.password,
    config.db.options
)

// functionality to automatically read through the model-files in models-folder (except index.js)
// declaration of model to be imported and used with sequelize
// -> db.User = model
fs
    .readdirSync(__dirname)
    .filter((file) => 
        file !== 'index.js'
    )
    .forEach((file) => {
        /* const model = sequelize.import(path.join(__dirname, file)) */    // .import fuction is depracated as of Version 6
        const model = require(path.join(__dirname, file))(sequelize, Sequelize.DataTypes)
        db[model.name] = model
    })

db.sequelize = sequelize
db.Sequelize = Sequelize

module.exports = db
