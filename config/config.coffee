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
    

  test:
    root: rootPath
    app:
      name: 'wantedpixel-backend'
    port: 3000
    db: 'mongodb://localhost/wantedpixel-backend-test'
    

  production:
    root: rootPath
    app:
      name: 'wantedpixel-backend'
    port: 3000
    db: 'mongodb://localhost/wantedpixel-backend-production'
    

module.exports = config[env]
