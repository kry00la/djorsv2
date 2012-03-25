class ReservationsController < InheritedResources::Base
  def index
    @reservations = Reservation.all
  end
  
  def show
    @reservation = Reservation.includes(:reservation_function_rooms => :function_room,:reservation_package => :package).find(params[:id])
  end
  

end
