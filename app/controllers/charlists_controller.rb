class PagesController < ApplicationController
  before_action :authenticate_user!

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
end
