class Glue
  constructor: (@gui, @fileReaderAdapter) ->
    @gui.fileSelected = (file) => @fileReaderAdapter.readFile(file)
    @fileReaderAdapter.fileRead = (content) => @gui.displayContent(content)

module.exports = Glue
