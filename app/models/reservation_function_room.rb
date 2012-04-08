class ReservationFunctionRoom < ActiveRecord::Base
  belongs_to :reservation
  belongs_to :function_room
  
  def remove_function_room
    reservation.total_price = reservation.total_price - self.function_room.price
    reservation.save
  end
end
