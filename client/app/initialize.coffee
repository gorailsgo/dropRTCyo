ServerApplication = require('server_application')

$ ->
  if window.File and window.FileReader
    new ServerApplication().start()
  else
    alert("Unfortunately I won't make it!")
