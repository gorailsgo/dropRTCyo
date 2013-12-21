class ClientGui
  constructor: ->

  start: =>
    $("#file").hide()

  showData: (data) =>
    $("body").append("<a href='#{data}'>The file</a>")

module.exports = ClientGui
