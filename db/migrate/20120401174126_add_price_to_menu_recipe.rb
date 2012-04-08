class AddPriceToMenuRecipe < ActiveRecord::Migration
  def change
    add_column :menu_recipes, :price, :decimal

  end
end
