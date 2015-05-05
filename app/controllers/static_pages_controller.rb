class StaticPagesController < ApplicationController
  def index
    if current_user.present?
      @user = current_user
    else
      @user = User.new
    end
  end
end
