class AddPriceToPackageMenu < ActiveRecord::Migration
  def change
    add_column :package_menus, :price, :decimal

  end
end
