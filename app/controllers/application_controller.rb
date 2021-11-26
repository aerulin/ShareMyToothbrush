class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :num_notif

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :address, :photo_url, :photo])
  end

  def num_notif
    if user_signed_in?
    @bookings_owner = Booking.joins(:toothbrush).where(toothbrushes: { user_id: current_user.id })
    @pending_requests = @bookings_owner.where(status:"⏳ pending" )
    @notif_number = @pending_requests.count
    end
  end

  #   bookings = Booking.where(status: "⏳ pending")
  #   user_occurence = []
  #   bookings.each do |booking|
  #     if booking.toothbrush.user == current_user
  #       user_occurence << toothbrush
  #     end
  #   end
  #   @notif_number = user_occurence.count
  # end

end
