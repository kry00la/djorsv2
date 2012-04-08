class AddReservationIdToMenuAddonsLineItem < ActiveRecord::Migration
  def change
    add_column :menu_addons_line_items, :reservation_id, :integer

  end
end
