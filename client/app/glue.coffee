class Glue
  constructor: (@gui, @fileReaderAdapter, @server) ->
    @gui.fileSelected = (file) => @fileReaderAdapter.readFile(file)
    @fileReaderAdapter.fileRead = (content) => @server.sendDataOnClientConnected(content)
    @server.started = (id) => @gui.setHash(id)

module.exports = Glue
