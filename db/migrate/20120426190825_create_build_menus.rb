class CreateBuildMenus < ActiveRecord::Migration
  def change
    create_table :build_menus do |t|
      t.integer :menu_id
      t.integer :recipe_id

      t.timestamps
    end
  end
end
