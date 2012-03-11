class AddMenuIdToMenuRecipe < ActiveRecord::Migration
  def change
    add_column :menu_recipes, :menu_id, :integer

  end
end
