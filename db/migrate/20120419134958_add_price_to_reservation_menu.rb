class AddPriceToReservationMenu < ActiveRecord::Migration
  def change
    add_column :reservation_menus, :price, :decimal

  end
end
