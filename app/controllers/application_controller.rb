class ApplicationController < ActionController::Base
  protect_from_forgery
 
private
  before_filter :current_reservation

   def current_reservation
   @reservation ||= Reservation.find(session[:reservation_id]) if session[:reservation_id]
   # #last assigned value will be returned as default.
  end

 def create_reservation_session(id)
   session[:reservation_id] = id
 end

 def destroy_reservation_session
   session[:reservation_id] = nil
 end

   def session_count
    if session[:counter].nil?
      session[:counter] = 0
    else
      session[:counter] += 1
    end
  end
end
