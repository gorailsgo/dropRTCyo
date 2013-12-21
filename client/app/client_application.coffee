PeerClient = require('peer_client')
Glue = require('client_glue')
Gui = require('client_gui')

class ClientApplication
  constructor: ->
    $("#client").show()
    @client = new PeerClient()
    @gui = new Gui()
    @glue = new Glue(@gui, @client)

  start: =>
    id = window.location.search.replace("?", "")
    @gui.start()
    @client.start(id)


module.exports = ClientApplication
