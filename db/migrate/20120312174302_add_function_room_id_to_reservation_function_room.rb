class AddFunctionRoomIdToReservationFunctionRoom < ActiveRecord::Migration
  def change
    add_column :reservation_function_rooms, :function_room_id, :integer

  end
end
