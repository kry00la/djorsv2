class AddPriceToPackageLineItem < ActiveRecord::Migration
  def change
    add_column :package_line_items, :price, :decimal

  end
end
