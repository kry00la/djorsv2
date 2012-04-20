class AddMenuTypeToRecipe < ActiveRecord::Migration
  def change
    add_column :recipes, :menu_type_id, :integer

  end
end
