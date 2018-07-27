require 'socket'
require 'thread'


SERVER_PORT = 1337

class Server
  def initialize
    @pubsub_mutex = Mutex.new

  end

  def listen
    tcp_server = TCPServer.new(SERVER_PORT)

    loop do
      Thread.new(tcp_server.accept) do |client_socket|
        while command_line = client_socket.gets
        end

      end
    end

  end

  attr_reader :pubsub_mutex

end

