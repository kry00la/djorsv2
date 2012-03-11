class AddRecipeIdToMenuRecipe < ActiveRecord::Migration
  def change
    add_column :menu_recipes, :recipe_id, :integer

  end
end
