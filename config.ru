# This file is used by Rack-based servers to start the application.

require_relative "config/environment"

run Rails.application
Rails.application.load_server

RABBITMQ_COMPILER.queues['pdf_compilation.responce'].subscribe do |_delivery_info, _metadata, data|
  FileSender.call(data)
end
