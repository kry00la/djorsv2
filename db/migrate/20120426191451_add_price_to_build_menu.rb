class AddPriceToBuildMenu < ActiveRecord::Migration
  def change
    add_column :build_menus, :price, :decimal

  end
end
