class CreatePackageMenus < ActiveRecord::Migration
  def change
    create_table :package_menus do |t|

      t.timestamps
    end
  end
end
