class Reservation < ActiveRecord::Base
  has_one :reservation_package
  belongs_to :service
  has_many :reservation_function_rooms
  has_many :package_line_items
  has_many :menus , :through => :package_line_items, :uniq => true
  has_many :function_rooms, :through =>:reservation_function_rooms

    def add_function_room
     current_function_room = reservation_function_rooms.find_by_function_room_id(function_room_id)
     current_function_room = reservation_function_rooms.build(:function_room)
     current_function_room.price = current_function_room.function_room.price
    end

end
