class ToothbrushesController < ApplicationController
  def index
    @toothbrushes = Toothbrush.all
  end

end
