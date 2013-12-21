class FileReaderAdapter
  readFile: (file) =>
    @reader = new FileReader()

    @reader.onload = (event) =>
      @handleFileRead(event)

    @reader.onprogress = (event) =>
      if event.lengthComputable
        loaded = event.loaded / event.total
        console.log loaded
        @updateProgress(loaded)

    @reader.readAsDataURL(file)

  handleFileRead: (event) =>
    @fileRead(event.target.result)

  fileRead: (content) =>

  updateProgress: (loaded) =>

module.exports = FileReaderAdapter
