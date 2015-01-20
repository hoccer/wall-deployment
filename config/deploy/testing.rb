server '192.168.12.34', user: 'deployment', roles: ['app'], config: {
  talk_server: 'wss://talkserver-test1.talk.hoccer.de:8443',
  backend_port: 5000,
  contact_name: 'Hoccer Wall (testing)',
  avatar_file: 'football.jpg',

  # ART+COM Cologne
  latitude: 50.948613,
  longitude: 6.908733
}
