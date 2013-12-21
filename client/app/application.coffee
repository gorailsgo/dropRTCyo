Gui = require('gui')
FileReaderAdapter = require('file_reader_adapter')
Glue = require('glue')

class Application
  constructor: ->
    @gui = new Gui()
    @fileReaderAdapter = new FileReaderAdapter()
    @glue = new Glue(@gui, @fileReaderAdapter)

  start: ->
    @gui.start()

module.exports = Application
