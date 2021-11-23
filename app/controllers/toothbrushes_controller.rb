class ToothbrushesController < ApplicationController
  def index
    @toothbrushes = Toothbrush.all
  end

  def show
    @toothbrush = Toothbrush.find(params[:id])
  end

  def new
    @toothbrush = Toothbrush.new
  end

  def create
    @toothbrush = Toothbrush.new(toothbrush_params)
    # @user = User.find(params[:user_id])
    # @toothbrush.user = @user
    @toothbrush.save!
    redirect_to toothbrushes_path
  end

  private

  def toothbrush_params
    params.require(:toothbrush).permit(:title, :description, :condition, :price, :brand, :category_id, :user_id)
  end
end
