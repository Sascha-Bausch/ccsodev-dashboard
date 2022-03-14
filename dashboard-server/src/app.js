console.log('Gude');
const express = require('express')
const bodyParser = require('body-parser')
const cors = require('cors')
const morgan = require('morgan')
const {sequelize} = require('./models')
const config = require('./config/config')

// create an express application which runs on port 8080
const app = express()
app.use(morgan('combined'))
app.use(bodyParser.json())
app.use(cors())

require('./routes')(app)

sequelize.sync()
    .then(() => {
        app.listen(config.port)    // start server
        console.log(`Server started on port ${config.port}`);
    })

// create endpoint 'register'
/* app.post('/register', (req, res) => {
    res.send({
        message: `Hi: ${req.body.email}! You are registered. Test!!!`
    })
}) */

/* 
// create an endpoint called 'status'
const messages = [{ msg1: 'nochmal Gude!' }]
app.get('/status', (_req, res) => {
    res.send(messages)
})
app.listen(process.env.PORT || 8080)
*/

// connect sequelize to database
