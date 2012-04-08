class FunctionRoom < ActiveRecord::Base
  has_many :reservation_function_rooms
  #has_many :reservations, :through => :reservation_function_rooms, :uniq => true
end

