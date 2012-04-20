class AddPackageIdToPackageMenu < ActiveRecord::Migration
  def change
    add_column :package_menus, :package_id, :integer

  end
end
