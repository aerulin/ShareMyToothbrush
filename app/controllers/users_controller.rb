class UsersController < ApplicationController
  def show
    @user = current_user
    @toothbrushes = Toothbrush.where(user: current_user)
  end

  def edit
    @user = current_user
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    if @user.update(user_params)
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :address)
  end

end
