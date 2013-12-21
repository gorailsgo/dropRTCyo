class Glue
  constructor: (@gui, @fileReaderAdapter, @server) ->
    @gui.fileSelected = (file) => @fileReaderAdapter.readFile(file)
    @fileReaderAdapter.fileRead = (content) => @server.sendDataOnClientConnected(content)
    @fileReaderAdapter.updateProgress = (loaded) => @gui.updateProgress(loaded)
    @server.sendingStarted = (id) => @gui.showHash(id)

module.exports = Glue
