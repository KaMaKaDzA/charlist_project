class CharlistsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user_id

  def index
    @charlists = Charlist.all
  end

  def create

  end

  def show

  end

  def update

  end

  def delete

  end

  def download

  end

  def construct

  end

  private

  def set_user_id
    @user_id = current_user&.id
  end
end
