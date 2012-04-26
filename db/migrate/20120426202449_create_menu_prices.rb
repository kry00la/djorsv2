class CreateMenuPrices < ActiveRecord::Migration
  def change
    create_table :menu_prices do |t|
      t.integer :menu_id

      t.timestamps
    end
  end
end
