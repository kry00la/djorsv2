class AddPriceToMenuAddonsLineItem < ActiveRecord::Migration
  def change
    add_column :menu_addons_line_items, :price, :decimal, :default => 0

  end
end
