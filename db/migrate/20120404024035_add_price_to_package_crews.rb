class AddPriceToPackageCrews < ActiveRecord::Migration
  def change
    add_column :package_crews, :price, :decimal

  end
end
