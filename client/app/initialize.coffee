Application = require('./gui')

$ ->
  if window.File and window.FileReader
    new Application().start()
  else
    alert("Unfortunately I won't make it!")
