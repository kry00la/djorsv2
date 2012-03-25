class AddPriceToReservationFunctionRoom < ActiveRecord::Migration
  def change
    add_column :reservation_function_rooms, :price, :decimal

  end
end
