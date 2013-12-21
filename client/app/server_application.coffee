Gui = require('gui')
FileReaderAdapter = require('file_reader_adapter')
Glue = require('glue')
PeerServer = require('peer_server')

class ServerApplication
  constructor: ->
    $("#server").show()
    @gui = new Gui()
    @fileReaderAdapter = new FileReaderAdapter()
    @server = new PeerServer()
    @glue = new Glue(@gui, @fileReaderAdapter, @server)

  start: ->
    @gui.start()
    @server.start()


module.exports = ServerApplication
