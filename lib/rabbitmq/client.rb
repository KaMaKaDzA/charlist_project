module RabbitMQ
  class Client
    attr_reader :connection, :channel, :exchanges, :queues

    def initialize(channel_id)
      @connection = Bunny.new(host: ENV['RABBITMQ_HOST'])
      @connection.start
      @channel = channel_id.present? ? @connection.channel(1) : @connection.channel

      @exchanges = {}
      @queues = {}
    end

    def create_exchange(name, type, options)
      @exchanges[name] = case type.to_s
                         when 'direct'
                           @channel.direct(name, options)
                         when 'fanout'
                           @channel.fanout(name, options)
                         when 'topic'
                           @channel.topic(name, options)
                         else
                           @channel.direct(name, options)
                         end
    end

    def create_queue(name, options, exchange, binding_options)
      @queues[name] = @channel.queue(name, options).bind(exchange, binding_options)
    end

    def publish(queue_name, payload, options)
      @queues[queue_name].publish(payload, options)
    end
  end
end
