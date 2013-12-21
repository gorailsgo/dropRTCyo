ServerApplication = require('server_application')
ClientApplication = require('client_application')

$ ->
  if window.File and window.FileReader
    if window.location.search
      new ClientApplication().start()
    else
      new ServerApplication().start()
  else
    alert("Unfortunately I won't make it!")
