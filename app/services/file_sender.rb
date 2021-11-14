class FileSender < ApplicationService
  def initialize(payload)
    @payload = payload
  end

  def call
    # TODO implement file sending system
    p "#{@payload} - from rabbitmq compiler"
  end
end
