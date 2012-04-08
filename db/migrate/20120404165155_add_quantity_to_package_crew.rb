class AddQuantityToPackageCrew < ActiveRecord::Migration
  def change
    add_column :package_crews, :quantity, :integer , :default => 1 

  end
end
