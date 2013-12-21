class PeerServer
  start: =>
    @peer = new Peer({host: '127.0.0.1', port: 9000, key: 'peerjs'})
    @peer.on('open', (id) => @id = id)

  sendDataOnClientConnected: (data) =>
    @sendingStarted(@id)
    @peer.on 'connection', (connection) =>
      connection.on 'open', =>
        connection.send(data)

  sendingStarted: =>


module.exports = PeerServer
