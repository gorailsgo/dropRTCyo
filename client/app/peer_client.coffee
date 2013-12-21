peer = new Peer({host: '127.0.0.1', port: 9000, key: 'peerjs'})

class PeerClient
  constructor: (id)->
    @peer = new Peer({host: '127.0.0.1', port: 9000, key: 'peerjs'})
    @connection = @peer.connect(id)
    @
  onDataRecived: (func) ->
    @connection.on 'data', func
module.exports = PeerClient
