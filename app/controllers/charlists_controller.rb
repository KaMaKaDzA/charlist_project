class CharlistsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user_id

  def index
    @charlists = Charlist.all
  end

  def create
    result = CharlistCreator.call(params, @user_id)
    if result[:success]
      RABBITMQ_COMPILER.publish('pdf_compilation.send', result[:charlist_data])
      { success: true, data: result[:charlist_data] }
    else
      { success: false, data: 'Unprocessable entity' }
    end
  end

  def show
    # TODO implement charlist show page
  end

  def update
    # TODO implement charlist edit page
  end

  def delete
    Charlist.find_by_id(params['id']).destroy
    { charlist_id: params['id'] }.to_json
  end

  def download
    FileSender.call(params)
  end

  def construct
  end

  private

  def set_user_id
    @user_id = current_user&.id
  end
end
