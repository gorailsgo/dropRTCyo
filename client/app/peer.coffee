peer = new Peer({host: '127.0.0.1', port: 9000, key: 'peerjs'})

module.exports = (id) ->
  peer.on 'connection', (connection) ->
    connection.on 'data', (data) ->
      $("body").append('data')
    connection.on 'open', ->
      

  peer.connect(id)
  peer.on 'open', (id) ->
    conn = peer2.connect(peer1Id)
    conn.on 'data', (data) ->
      console.log data

    peer.on 'connection', (connection) ->
      connection.on 'open', ->
        connection.send('Data')
      connection.on 'data', (data) ->
        console.log(data)

