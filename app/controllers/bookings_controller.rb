class BookingsController < ApplicationController
  def index
    @bookings = Booking.where(user_id: current_user.id)
    @toothbrush = Toothbrush.all
  end

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
    redirect_to toothbrush_bookings_path(@toothbrush)
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
