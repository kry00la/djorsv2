class AddReservationIdToReservationFunctionRoom < ActiveRecord::Migration
  def change
    add_column :reservation_function_rooms, :reservation_id, :integer

  end
end
