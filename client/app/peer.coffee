peer1 = new Peer({host: '127.0.0.1', port: 9000, key: 'peerjs'})
peer2 = new Peer({host: '127.0.0.1', port: 9000, key: 'peerjs'})

peer1.on 'open', (id) ->
  peer1Id = id
  conn = peer2.connect(peer1Id)
  conn.on 'data', (data) ->
    console.log data

  peer1.on 'connection', (connection) ->
    connection.on 'open', ->
      connection.send('Data')
