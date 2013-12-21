class Gui
  start: ->
    @fileInput = document.getElementById('file')
    @fileInput.addEventListener('change', @handleFileSelected, false)

    $('#drop').on 'dragenter', (e) ->
      e.stopPropagation();
      e.preventDefault();
      $(this).css('border-color', '#707070');
      $(this).css('border-width', '4');
      $(this).find('.title').css('margin-top', '134px')
      $(this).find('.title').css('margin-left', '0px')

    $("#drop").on 'dragleave', (e) ->
      e.stopPropagation();
      e.preventDefault();
      $(this).css('border-color', 'grey');
      $(this).css('border-width', '3');      
      $(this).find('.title').css('margin-top', '135px')
      $(this).find('.title').css('margin-left', '2px')
    $("#drop").on 'drop', onDrop


  handleFileSelected: (event) =>
    file = event.target.files[0]
    @fileSelected(file)

  displayContent: (content) =>
    console.log(content)

  showHash: (hash) =>
    $("#file").hide()
    $("body").append("The url: #{window.location}?#{hash}")

  fileSelected: (file) =>

  updateProgress: (loaded) =>
    $('#progressbar').css(width: "#{loaded * 100}%")

#private
  onDrop: (event)->
    data = event.dataTransfer.getData('text/plain')
    event.preventDefault()
    console.log(event.dataTransfer.files)

module.exports = Gui
