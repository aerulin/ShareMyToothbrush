class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @toothbrush = Toothbrush.find(params[:toothbrush_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @toothbrush = Toothbrush.find(params[:toothbrush_id])
    @booking.toothbrush = @toothbrush
    @booking.save!
    redirect_to toothbrush_path(@toothbrush)
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
