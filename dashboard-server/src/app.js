console.log('Gude');
const express = require('express')
const bodyParser = require('body-parser')
const cors = require('cors')
const morgan = require('morgan')

// create an express application which runs on port 8080 or 8081
const app = express()
app.use(morgan('combined'))
app.use(bodyParser.json())
app.use(cors())

const messages = [{ msg1: 'nochmal Gude!' }]

// create an endpoint called 'status'
app.get('/status', (_req, res) => {
    res.send(messages)
})

app.listen(process.env.PORT || 8080, 8081)
