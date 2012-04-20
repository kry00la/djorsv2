class CreateReservationMenus < ActiveRecord::Migration
  def change
    create_table :reservation_menus do |t|
      t.integer :reservation_id
      t.integer :menu_id

      t.timestamps
    end
  end
end
