express  = require 'express'
nodemailer = require 'nodemailer'
config = require('../../config/config')
_ = require('underscore')

email = express.Router()
module.exports = (app) ->
  app.use '/mail', email

email.use (req, res, next) ->
  res.header("Access-Control-Allow-Origin", config.corsWhitelist)
  res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept")
  next()

email.post '/', (req, res, next) ->
  smtpTrans = nodemailer.createTransport config.email.smtpServer
  mailOptions = _.extend
    to: 'spiros@wantedpixel.com'
    text: 'Name: ' + req.body.firstName + ' ' + req.body.lastName + '\n' +
          'Email: ' + req.body.email + '\n' +
          'Message: ' + req.body.message
    config.email.defaultMailOptions

  smtpTrans.sendMail(mailOptions, (error, info) ->
    smtpTrans.close()
    if(error) then res.status(500).send() else res.status(200).send()
  )
