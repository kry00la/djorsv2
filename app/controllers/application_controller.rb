class ApplicationController < ActionController::Base
  protect_from_forgery
 
private
  before_filter :current_reservation
  #around_filter :catch_not_found

    def catch_not_found
      yield
    rescue ActiveRecord::RecordNotFound
      redirect_to reservations_path, :flash => { :error => "You have entered a invalid reservation contact management for details." }
    end
    
   def current_reservation
   @reservation ||= Reservation.find(session[:reservation_id]) if session[:reservation_id]
     rescue ActiveRecord::RecordNotFound
     redirect_to reservations_path, :flash => { :error => "You have entered a invalid reservation contact management for details." }
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
