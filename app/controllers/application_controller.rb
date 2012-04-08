class ApplicationController < ActionController::Base
  protect_from_forgery
  
  private
  def current_reservation
    Reservation.find(session[:reservation_id])
  end
end
