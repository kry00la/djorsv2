class CreateReservationRecipes < ActiveRecord::Migration
  def change
    create_table :reservation_recipes do |t|
      t.integer :reservation_id
      t.integer :recipe_id

      t.timestamps
    end
  end
end
