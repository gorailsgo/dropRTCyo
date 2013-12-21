class FileReaderAdapter
  readFile: (file) =>
    @reader = new FileReader()

    @reader.onload = (event) =>
      @handleFileRead(event)
    @reader.readAsDataURL(file)

  handleFileRead: (event) =>
    @fileRead(event.target.result)

  fileRead: (content) =>

module.exports = FileReaderAdapter
