class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @toothbrushes_list = Toothbrush.all
    @toothbrushes = Toothbrush.all.last(3).reverse
    @user = current_user
    @vintage = Toothbrush.where(category: "Vintage")
    # For map
    @users_list = User.all

    # the `geocoded` scope filters only flats with coordinates (latitude & longitude)
    @markers = @users_list.geocoded.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude
      }
    end

  end

  private

  def user_params
    params.require(:user).permit(:id, :first_name, :last_name, :address, :email, :password, :photo_url, :photo)
  end

end
