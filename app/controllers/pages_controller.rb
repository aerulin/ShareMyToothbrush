class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @toothbrushes_list = Toothbrush.all
    @toothbrushes = Toothbrush.all.last(3).reverse
    @user = current_user
    @vintage = Toothbrush.where(category: "Vintage")

    # For map
    @users_list = User.all
    @markers = @users_list.geocoded.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude,
        info_window: render_to_string(partial: "info_window", locals: { user: user }),
        image_url: helpers.asset_url('https://res.cloudinary.com/dg2an4buq/image/upload/v1637929695/pngkit_tooth-brush-png_809504_vsi4jl.png')
      }
    end
  end

  private

  def user_params
    params.require(:user).permit(:id, :first_name, :last_name, :address, :email, :password, :photo_url, :photo)
  end

end
