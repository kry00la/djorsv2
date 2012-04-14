class CreateRecipeImages < ActiveRecord::Migration
  def change
    create_table :recipe_images do |t|
      t.integer :recipe_id

      t.timestamps
    end
  end
end
