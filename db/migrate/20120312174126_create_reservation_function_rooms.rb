class CreateReservationFunctionRooms < ActiveRecord::Migration
  def change
    create_table :reservation_function_rooms do |t|

      t.timestamps
    end
  end
end
