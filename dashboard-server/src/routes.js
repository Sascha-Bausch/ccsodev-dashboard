module.exports = (app) => {
    app.post('/register', (req, res) => {
        res.send({
            message: `Hi: ${req.body.email}! You are registered. Test!!!`
        })
    })
}