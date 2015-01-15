express  = require 'express'
nodemailer = require 'nodemailer'
config = require('../../config/config')
_ = require('underscore')

email = express.Router()
module.exports = (app) ->
  app.use '/mail', email

email.get '/', (req, res, next) ->
  smtpTrans = nodemailer.createTransport config.email.smtpServer

  mailOptions = _.extend
    to: 'spiros@wantedpixel.com'
    text: 'Hello world ✔'
    config.email.defaultMailOptions

  smtpTrans.sendMail(mailOptions, (error, info) ->
    if(error) then console.log(error) else console.log('Message sent: ' + info.response)
    smtpTrans.close()
  )
  res.send('hello world');