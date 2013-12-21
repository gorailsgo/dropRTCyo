Gui = require('gui')
FileReaderAdapter = require('file_reader_adapter')
Glue = require('glue')
PeerServer = require('peer_server')
PeerClient = require('peer_client')

class Application
  constructor: ->
    @gui = new Gui()
    @fileReaderAdapter = new FileReaderAdapter()
    @glue = new Glue(@gui, @fileReaderAdapter)

  start: ->
    @gui.start()
    if window.location.hash
      console.log "client"
      client = new PeerClient(window.location.hash.replace("#", ""))
      client.onDataRecived (data)->
        console.log("=======")
        console.log(data)
    else
      console.log "server"
      server = new PeerServer()
      server.start (id)->
        window.location.hash = id
        server.sendDataOnClientConnected "jakiesdane"


module.exports = Application
