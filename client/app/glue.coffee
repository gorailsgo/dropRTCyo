class Glue
  constructor: (@gui, @fileReaderAdapter, @server) ->
    @gui.fileSelected = (file) => @fileReaderAdapter.readFile(file)
    @fileReaderAdapter.fileRead = (content) => @server.sendDataOnClientConnected(content, )
    @server.sendingStarted = (id) => @gui.showHash(id)

module.exports = Glue
