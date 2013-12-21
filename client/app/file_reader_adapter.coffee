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

module.exports = FileReaderAdapter
