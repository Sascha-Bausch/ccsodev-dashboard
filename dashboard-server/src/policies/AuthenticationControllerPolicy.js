// Express middleware

/* const Joi = require('joi')

module.exports = {
    register (req, res, next) {
        const schema = Joi.object({
            email: Joi.string().email(),
            password: Joi.string().regex(new RegExp('^[a-zA-Z0-9]{8,32}$'))
        })
        const {error} = schema.validate(req.body, schema)
        if (error) {
            switch (error.details[0].context.key) {
                case 'email':
                    res.status(400).send({
                        error: 'You must provide a valid email address'
                    })
                    break
                case 'password':
                    res.status(400).send({
                        error: `Your password does not match the following rules:
                        <br>
                        1. Only lower/upper case letters: a-z / A-Z
                        <br>
                        2. Only numerics (0-9)
                        <br>
                        3. Password length: Minimum 8 / Maximum 32
                        `
                    })
                    break
                case 'default':
                    res.status(400).send({
                        error: 'Invalid information'
                    })
            }
        } else {
            next()
        } 
    } 
}
 */