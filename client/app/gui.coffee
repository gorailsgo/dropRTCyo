class Gui
  start: ->
    @fileInput = document.getElementById('file')
    @fileInput.addEventListener('change', @handleFileSelected, false)

    $('#drop').on 'dragenter', (e) ->
      e.stopPropagation()
      e.preventDefault()
      $(this).css('border-color', '#707070')
      $(this).css('border-width', '4')
      $(this).find('.title').css('margin-top', '134px')
      $(this).find('.title').css('margin-left', '0px')

    $("#drop").on 'dragleave', (e) ->
      e.stopPropagation()
      e.preventDefault()
      $(this).css('border-color', 'grey')
      $(this).css('border-width', '3');
      $(this).find('.title').css('margin-top', '135px')
      $(this).find('.title').css('margin-left', '2px')
    $("#drop").on 'dragover', (e)->
      e.preventDefault()
      e.stopPropagation()
    $("#drop").on 'drop', @onDrop


  handleFileSelected: (event) =>
    file = event.target.files[0]
    @fileSelected(file)

  displayContent: (content) =>
    console.log(content)

  showHash: (hash) =>
    $("#file").hide()
    $("body").append("The url: <input value='#{window.location}?#{hash}' size='40' />")

  fileSelected: (file) =>

  updateProgress: (number, total) =>
    $('#progressbar').css(width: "#{(number/total) * 100}%")

  onDrop: (event) =>
    number = 0
    total = event.originalEvent.dataTransfer.files.length
    event.preventDefault()
    for file in event.originalEvent.dataTransfer.files
      do (file) =>
        number = number + 1
        @fileSelected(file)
        @updateProgress(number, total)

module.exports = Gui
