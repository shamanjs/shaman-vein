should      = load 'should'
{resolve}   = load 'path'
start       = load 'services.start'
paths       = load 'services.paths'
contract    = load 'test.app.contract'
isPortTaken = load 'services.util.isPortTaken'
module.exports =

  integration:
    "start new @agent with contract": ->
      #