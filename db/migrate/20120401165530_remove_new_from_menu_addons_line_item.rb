class RemoveNewFromMenuAddonsLineItem < ActiveRecord::Migration
  def up
    remove_column :menu_addons_line_items, :new
      end

  def down
    add_column :menu_addons_line_items, :new, :string
  end
end
