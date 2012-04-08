class RemoveDestroyFromMenuAddonsLineItem < ActiveRecord::Migration
  def up
    remove_column :menu_addons_line_items, :destroy
      end

  def down
    add_column :menu_addons_line_items, :destroy, :string
  end
end
