class ToothbrushesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index


  def index
    @toothbrushes = Toothbrush.all
    @user = current_user
  end

  def show
    @toothbrush = Toothbrush.find(params[:id])
    @user = User.find(@toothbrush.user_id)

    @booking = Booking.new
    @user_owner = User.find(@toothbrush.user_id)

    # For map
    @markers = [{ lat: @user.latitude, lng: @user.longitude }]

  end

  def new
    @toothbrush = Toothbrush.new
  end

  def create
    @toothbrush = Toothbrush.new(toothbrush_params)
    @toothbrush.user = current_user

    @toothbrush.save
    if @toothbrush.save
      redirect_to toothbrushes_path
    else
      render :new
    end

  end

  def edit
    @toothbrush = Toothbrush.find(params[:id])
  end

  def update
    @toothbrush = Toothbrush.find(params[:id])
    @toothbrush.update(toothbrush_params)
    if @toothbrush.update(toothbrush_params)
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  private

  def toothbrush_params
    params.require(:toothbrush).permit(:title, :description, :condition, :price, :brand, :category_id, :user_id, :photo)
  end
end
