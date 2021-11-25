class ToothbrushesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @toothbrushes = Toothbrush.all


  end

  def show
    @toothbrush = Toothbrush.find(params[:id])
    @user = User.find(@toothbrush.user_id)
    @booking = Booking.new

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
      redirect_to toothbrush_path(@toothbrush)
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

  def destroy
    @toothbrush = Toothbrush.find(params[:id])
    @toothbrush.destroy
    redirect_to user_path(current_user)
  end

  private

  def toothbrush_params
    params.require(:toothbrush).permit(:title, :description, :condition, :price, :brand, :category, :user_id, :photo)
  end
end
