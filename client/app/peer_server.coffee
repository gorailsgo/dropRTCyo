class PeerServer
  start: =>
    @peer = new Peer({host: '127.0.0.1', port: 9000, key: 'peerjs'})
    @peer.on('open', (id) => @started(id))

  sendDataOnClientConnected: (data) =>
    console.log("WAITING FOR CONNECTION")
    console.log(data)
    @peer.on 'connection', (connection) =>
      console.log("CONNECTED")
      connection.on 'open', =>
        connection.send(data)

  started: (id) =>


module.exports = PeerServer
