class ReservationFunctionRoomsController < InheritedResources::Base

  def index
    redirect_to Reservation.find(params[:reservation_id])
  end

 def show
   redirect_to Reservation.find(params[:reservation_id])
 end


def new
  @reservation = Reservation.find(params[:reservation_id])
  @reservation_function_room = @reservation.reservation_function_rooms.build
end


def create
  @reservation = Reservation.find(params[:reservation_id])
  
  @reservation_function_room = @reservation.reservation_function_rooms.build(params[:reservation_function_room])
  
  if @reservation_function_room.save
    redirect_to @reservation
  end
end

end
