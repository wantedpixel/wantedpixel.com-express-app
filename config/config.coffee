path     = require 'path'
rootPath = path.normalize __dirname + '/..'
env      = process.env.NODE_ENV || 'development'

config =
  development:
    root: rootPath
    app:
      name: 'wantedpixel-backend'
    port: 3010
    db: 'mongodb://wantedsi_mongoadmin:taponnyag4@localhost:20954'
    email:
      smtpServer:
        service: 'Gmail'
        auth:
          user: "###"
          pass: "###"
      defaultMailOptions:
        from: 'Wantedpixel<contact@wantedpixel.com>'
        subject: 'Message from wantedpixel.com visitor'
    corsWhitelist: 'http://localhost:9000'    

  test:
    root: rootPath
    app:
      name: 'wantedpixel-backend'
    port: 3000
    db: 'mongodb://localhost/wantedpixel-backend-test'
    email:
      smtpServer:
        service: 'Gmail'
        auth:
          user: "###"
          pass: "###"
      defaultMailOptions:
        from: 'Wantedpixel<contact@wantedpixel.com>'
        subject: 'Message from wantedpixel.com visitor'
    corsWhitelist: 'http://localhost:9000'



  production:
    root: rootPath
    app:
      name: 'wantedpixel-backend'
    port: 3000
    db: 'mongodb://wantedsi_mongoadmin:taponnyag4@localhost:20954/wantedpixel-backend-production'
    email:
      smtpServer:
        service: 'Gmail'
        auth:
          user: "###"
          pass: "###"
      defaultMailOptions:
        from: 'Wantedpixel<contact@wantedpixel.com>'
        subject: 'Message from wantedpixel.com visitor'
    corsWhitelist: 'http://localhost:9000'



module.exports = config[env]
