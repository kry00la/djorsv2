class AddPriceToReservationPackage < ActiveRecord::Migration
  def change
    add_column :reservation_packages, :price, :decimal, :default => 0

  end
end
