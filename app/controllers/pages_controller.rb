class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @toothbrushes_list = Toothbrush.all
    @toothbrushes = Toothbrush.all.last(3).reverse
    @user_id = params[:id]
  end

  private

  def user_params
    params.require(:user).permit(:id, :first_name, :last_name, :address, :email, :password, :photo_url, :photo)
  end

end
