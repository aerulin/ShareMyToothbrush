class ToothbrushesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @toothbrushes = Toothbrush.all

    # For map
    @flats = Flat.all

    # the `geocoded` scope filters only flats with coordinates (latitude & longitude)
    @markers = @flats.geocoded.map do |flat|
      {
        lat: flat.latitude,
        lng: flat.longitude
      }
    end
  end

  def show
    @toothbrush = Toothbrush.find(params[:id])
    @user = User.find(@toothbrush.user_id)
  end

  def new
    @toothbrush = Toothbrush.new
  end

  def create
    @toothbrush = Toothbrush.new(toothbrush_params)
    @toothbrush.user = current_user
    # raise
    @toothbrush.save!
    redirect_to toothbrushes_path
  end

  private

  def toothbrush_params
    params.require(:toothbrush).permit(:title, :description, :condition, :price, :brand, :category_id, :user_id, :photo)
  end
end
