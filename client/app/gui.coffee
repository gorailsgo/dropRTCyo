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

  updateProgress: (percentage) =>
    bar = document.getElementById('progressbar')

module.exports = Gui
