class PeerServer
  start: (func) ->
    @peer = new Peer({host: '127.0.0.1', port: 9000, key: 'peerjs'})
    @peer.on('open', (id) => @started(id))

  sendDataOnClientConnected: (data)->
    @peer.on 'connection', (connection) ->
      connection.on 'open', ->
        connection.send(data)

  started: (id) =>


module.exports = PeerServer
