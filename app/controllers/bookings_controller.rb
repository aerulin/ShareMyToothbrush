class BookingsController < ApplicationController
  def index
    @bookings = Booking.where(user_id: current_user.id)
    @bookings_owner = Booking.joins(:toothbrush).where(toothbrushes: { user_id: current_user.id })
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
    redirect_to bookings_path
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path
  end

  def validate
    @booking = Booking.find(params[:format])
    @booking.status = "✔️ confirmed"
    @booking.save!
    redirect_to bookings_path
  end

  def decline
    @booking = Booking.find(params[:format])
    @booking.status = "⤫ declined"
    @booking.save!
    redirect_to bookings_path
  end

  def cancel
    @booking = Booking.find(params[:format])
    @booking.status = "⤫ cancelled"
    @booking.save!
    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
