class RemoveCreateFromMenuAddonsLineItem < ActiveRecord::Migration
  def up
    remove_column :menu_addons_line_items, :create
      end

  def down
    add_column :menu_addons_line_items, :create, :string
  end
end
