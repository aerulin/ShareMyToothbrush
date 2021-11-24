class ToothbrushesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @toothbrushes = Toothbrush.all


  end

  def show
    @toothbrush = Toothbrush.find(params[:id])
    @user = User.find(@toothbrush.user_id)

    # For map
    @markers = [{ lat: @user.latitude, lng: @user.longitude }]
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
