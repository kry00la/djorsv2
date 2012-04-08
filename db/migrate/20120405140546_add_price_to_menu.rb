class AddPriceToMenu < ActiveRecord::Migration
  def change
    add_column :menus, :price, :decimal, :default => 0

  end
end
