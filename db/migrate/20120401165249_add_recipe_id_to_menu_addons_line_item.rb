class AddRecipeIdToMenuAddonsLineItem < ActiveRecord::Migration
  def change
    add_column :menu_addons_line_items, :recipe_id, :integer

  end
end
