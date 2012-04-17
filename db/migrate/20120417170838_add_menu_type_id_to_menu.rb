class AddMenuTypeIdToMenu < ActiveRecord::Migration
  def change
    add_column :menus, :menu_type_id, :integer

  end
end
