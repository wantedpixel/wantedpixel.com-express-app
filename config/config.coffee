path     = require 'path'
rootPath = path.normalize __dirname + '/..'
env      = process.env.NODE_ENV || 'development'

config =
  development:
    root: rootPath
    app:
      name: 'wantedpixel-backend'
    port: 3000
    db: 'mongodb://localhost/wantedpixel-backend-development'
    email:
      smtpServer:
        service: 'Gmail'
        auth:
          user: "###"
          pass: "###"
      defaultMailOptions:
        from: 'Wantedpixel<contact@wantedpixel.com>'
        subject: 'Hello'

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
        subject: 'Hello'
    

  production:
    root: rootPath
    app:
      name: 'wantedpixel-backend'
    port: 3000
    db: 'mongodb://localhost/wantedpixel-backend-production'
    email:
      smtpServer:
        service: 'Gmail'
        auth:
          user: "###"
          pass: "###"
      defaultMailOptions:
        from: 'Wantedpixel<contact@wantedpixel.com>'
        subject: 'Hello'
    

module.exports = config[env]
