class AddMenuIdToLineReservation < ActiveRecord::Migration
  def change
    add_column :line_reservations, :menu_id, :integer

  end
end
