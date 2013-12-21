class Glue
  constructor: (@gui, @fileReaderAdapter, @server) ->
    @gui.fileSelected = (file) => @fileReaderAdapter.readFile(file)
    @fileReaderAdapter.fileRead = (content) => @server.sendDataOnClientConnected(content)
    @fileReaderAdapter.updateProgress = (loaded) => @gui.updateProgress(loaded)
    @server.started = (id) => @gui.setHash(id)

module.exports = Glue
