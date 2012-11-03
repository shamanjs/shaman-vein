path = require 'path'
module.exports  =

  name: "todos"
  goal: "keep track of todos"
  models:
    Todo:
      text: String
      done: Boolean
  archive: 'mongo'
  services:
    pinTodo: "pin a Todo"
  client: 
    uses: 
      css: 'vendor/bootstrap'
      js: ['jquery']
  views:
    index:   
      route: '/'
      #exe:
      #crud: 'Todo'
  #test
  log: -> # mute log
  web: 
    port: 8104
  paths: 
    root:     path.resolve __dirname, '..'
    app:      path.resolve __dirname, '../app'
    models:   path.resolve __dirname, '../app/models'
    services: path.resolve __dirname, '../app/services'
    jobs:     path.resolve __dirname, '../app/jobs'
    npmBin:   path.resolve __dirname, '../node_modules/.bin'