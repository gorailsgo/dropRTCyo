class PeerClient
  constructor: ->
    @peer = new Peer({host: '127.0.0.1', port: 9000, key: 'peerjs'})

  start: (id) =>
    @connection = @peer.connect(id)
    @connection.on 'data', (data) => @dataReceived(data)

  dataReceived: (data) =>

module.exports = PeerClient
