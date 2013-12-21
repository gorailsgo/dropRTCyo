class ClientGlue
  constructor: (@gui, @client) ->
    @client.dataReceived = (data) => @gui.showData(data)

module.exports = ClientGlue
