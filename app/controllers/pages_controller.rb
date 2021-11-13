class PagesController < ApplicationController
  def home
    @user_id = current_user&.id
  end
end
