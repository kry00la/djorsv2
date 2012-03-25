class ReservationFunctionRoom < ActiveRecord::Base
  belongs_to :reservation
  belongs_to :function_room
  

end
