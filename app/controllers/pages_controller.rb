class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @toothbrushes_list = Toothbrush.all
    @toothbrushes = Toothbrush.all.last(3).reverse
  end
end
