class ClientGui
  constructor: ->

  start: =>
    $("#file").hide()

  showData: (data) =>
    $("ul").append("<li><a href='#{data}'>The file</a></li>")

module.exports = ClientGui
