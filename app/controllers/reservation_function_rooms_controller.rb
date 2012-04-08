class ReservationFunctionRoomsController < InheritedResources::Base

def new
  @reservation_function_room = ReservationFunctionRoom.new

end


def create
  @reservation = Reservation.find(params[:reservation_id])
  functionroom = FunctionRoom.find(params[:function_room_id])
  @reservation_function_room = @reservation.add_function_room(functionroom.id)
  if @reservation_function_room.save
    redirect_to @reservation, :notice => "function room successfuly added"
  end
end

def destroy
  @reservation = Reservation.find(params[:reservation_id])
  @reservation_function_room = @reservation.reservation_function_rooms.find(params[:id])
  @reservation_function_room.remove_function_room
  @reservation_function_room.destroy
  redirect_to @reservation, :notice => "function room deleted"
end

end
