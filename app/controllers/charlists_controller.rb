class CharlistsController < ApplicationController
  before_action :authenticate_user!

  def index
    @charlists = Charlist.all
    @user_id = current_user&.id
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
end
