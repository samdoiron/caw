
class PubSub
  def initialize
    @subscribers = Hash.new { Array.new }
  end

  def add_subscriber(channel, subscriber)
    subscribers[channel] << subscriber
  end

  def notify(channel, message)
    subscribers[channel].each { |s| s.notify(channel, message) }
  end

  private

  attr_reader :subscribers
end


