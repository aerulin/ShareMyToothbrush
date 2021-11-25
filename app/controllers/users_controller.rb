class UsersController < ApplicationController
  def show
    @user = current_user
    @toothbrushes = Toothbrush.where(user: current_user)
  end
end
