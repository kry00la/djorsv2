class AddQuantityToMenuAddonsLineItem < ActiveRecord::Migration
  def change
    add_column :menu_addons_line_items, :quantity, :integer,:default => 1

  end
end
