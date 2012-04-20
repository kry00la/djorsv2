class AddPackageCategoryIdToPackage < ActiveRecord::Migration
  def change
    add_column :packages, :package_category_id, :integer

  end
end
