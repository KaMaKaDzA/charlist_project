require "#{Rails.root}/lib/rabbitmq/client"
begin
  RABBITMQ_COMPILER = RabbitMQ::Client.new(1)

  exchange = RABBITMQ_COMPILER.create_exchange("pdf_compilation", 'topic', { auto_delete: false, durable: true })

  RABBITMQ_COMPILER.create_queue('pdf_compilation.responce', { durable: true }, exchange, { routing_key: 'pdf_compilation.responce' })
  RABBITMQ_COMPILER.create_queue('pdf_compilation.send', { durable: true }, exchange, { routing_key: 'pdf_compilation.send' })
rescue StandardError => e
  sleep 5
  retry
end