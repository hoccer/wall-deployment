server '127.0.0.1:2222', user: 'deployment', roles: ['app'], config: {
  talk_server: 'wss://talkserver-test1.talk.hoccer.de:8443',
  backend_port: 5000,
  contact_name: 'the wall',
  avatar_file: 'football.jpg',
  latitude: 50.948613,
  longitude: 6.908733
}
