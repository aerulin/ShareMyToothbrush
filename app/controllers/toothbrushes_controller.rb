class ToothbrushesController < ApplicationController
  def index
    @toothbrushes = Toothbrush.all
  end

  def new
    @toothbrush = Toothbrush.new
  end

  def save
  end

  private
  def toothbrush_params

  end

end
