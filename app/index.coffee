path    = require 'path'
log     = require 'node-log'
shaman  = require 'shaman'
Vein    = require 'vein'

module.exports = (agent) -> 

  if !agent.web.server?
    log.error "shaman-api: no webserver"

  src  = path.resolve __dirname, "templates/"
  dest = "#{agent.paths.root}/build/webapp/client/"
  shaman.clone src, dest, agent, (err) ->
    return log.error err if err? 
    log.info "#{dest} cloned to"
    
  # Vein
  agent.web.socket = new Vein.createServer server: agent.web.server
  agent.web.socket.addFolder agent.paths.services

  log.info "Websocket server started"

  return agent