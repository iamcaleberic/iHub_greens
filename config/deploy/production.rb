set :stage, :production
server '192.168.11.197', user: 'jp', port: 6666 ,roles: %w{web app db}