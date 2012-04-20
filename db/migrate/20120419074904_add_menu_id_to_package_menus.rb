class AddMenuIdToPackageMenus < ActiveRecord::Migration
  def change
    add_column :package_menus, :menu_id, :integer

  end
end
