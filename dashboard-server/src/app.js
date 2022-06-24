console.log('Server läuft');
const express = require('express')
const bodyParser = require('body-parser')
const cors = require('cors')
const morgan = require('morgan')
/* const {sequelize} = require('./models')
const config = require('./config/config') */
/* const { Sequelize, DataTypes } = require('sequelize'); */

// create an express application which runs on port 8081
const app = express()
app.use(morgan('combined'))
app.use(bodyParser.json())
app.use(cors())

require('./routes')(app)

// create endpoint 'register'
app.post('/register', (req, res) => {
    res.send({
        message: `Hi: ${req.body.email}! You are registered. Test!!!`
    })
})

/* sequelize.sync()
    .then(() => {
        app.listen(config.port)    // start server
        console.log(`Server started on port ${config.port}`);
}) */

// create an endpoint called 'status'
const messages = [{ msg1: 'nochmal Gude!' }]
app.get('/status', (_req, res) => {
    res.send(messages)
})
app.listen(process.env.PORT || 8081)


// connect sequelize to database

/* const sequelize = new Sequelize({
    dialect: 'sqlite',
    storage: 'file://../dashboard-database.db'
  }); */

/*   sequelize.showAllSchemas()
  .then(result => {
    console.log(result)
  }) */

/* const test = async () => {
  try {
    await sequelize.authenticate();
    console.log('Connection has been established successfully.');
  } catch (error) {
    console.error('Unable to connect to the database:', error);
  }
} */

// test();

/* const Mitarbeiter = sequelize.define('mitarbeiter', {
    // Model attributes are defined here
    vorname: {
      type: DataTypes.STRING,
    },
    nachname: {
      type: DataTypes.STRING
    },
    team: {
        type: DataTypes.STRING
    },
    email: {
        type: DataTypes.STRING
    },
    telefon: {
        type: DataTypes.STRING
    },
    funktion: {
        type: DataTypes.STRING
    },
    schwerpunkt: {
        type: DataTypes.STRING
    }
}, {
    freezeTableName: true,
});

const getMitarbeiter = async () => {
    const alleMitarbeiter = await Mitarbeiter.findAll();

    console.log(alleMitarbeiter); */
/*    const rows = await sequelize.query('SHOW Tables');
    console.log(JSON.stringify(rows)); */
  

/* const addMitarbeiter = async () => {
    const alleMitarbeiter = await Mitarbeiter.create({
        vorname: 'Heinz',
        nachname: 'Heizöl',
        team: 'Individualentwicklung',
        email: 'hheizöl@sva.de',
        telefon: '0123 4455668899',
        funktion: 'Software Engineer',
        schwerpunkt: 'Full-Stack'
    });

    console.log(alleMitarbeiter); */
/*    const rows = await sequelize.query('SHOW Tables');
    console.log(JSON.stringify(rows)); */

// getMitarbeiter();
// addMitarbeiter();

/* sequelize.sync()
    .then(() => {
        app.listen(config.port)    // start server
        console.log(`Server started on port ${config.port}`);
    })
    

const users = async () => {
    const mitarbeiter = await sequelize.query("SELECT * FROM `mitarbeiter`");
    console.log(mitarbeiter);
}

users(); */
