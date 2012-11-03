should     = load 'should'
{resolve}  = load 'path'
webApp     = require 'shaman-webapp'
contract   = load 'test.app.contract'
api        = require './index'

module.exports =

  'shaman-api':
    "start new @agent with service in contract": ->
      @agent = webApp contract
      @agent = api @agent
    'agent.web.websocket started (8104)': ->
      should.exist @agent.web.socket
    'cleanup': ->
      @agent.web.server.close()
