class AddTotalPriceToReservation < ActiveRecord::Migration
  def change
    add_column :reservations, :total_price, :decimal , :default => 0  

  end
end
