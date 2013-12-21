class Gui
  start: ->
    @fileInput = document.getElementById('file')
    @fileInput.addEventListener('change', @handleFileSelected, false)

  handleFileSelected: (event) =>
    file = event.target.files[0]
    @fileSelected(file)

  displayContent: (content) =>
    console.log(content)

  fileSelected: (file) =>


class FileReaderAdapter
  constructor: ->
    @reader = new FileReader()
    @reader.onload = (event) =>
      @handleFileRead(event)

  readFile: (file) =>
    @reader.readAsDataURL(file)

  handleFileRead: (event) =>
    @fileRead(event.target.result)

  fileRead: (content) =>



class Glue
  constructor: (@gui, @fileReaderAdapter) ->
    @gui.fileSelected = (file) => @fileReaderAdapter.readFile(file)
    @fileReaderAdapter.fileRead = (content) => @gui.displayContent(content)


class Application
  constructor: ->
    @gui = new Gui()
    @fileReaderAdapter = new FileReaderAdapter()
    @glue = new Glue(@gui, @fileReaderAdapter)

  start: ->
    @gui.start()

module.exports = Application
