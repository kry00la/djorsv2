class CreateFunctionRooms < ActiveRecord::Migration
  def change
    create_table :function_rooms do |t|
      t.string :name
      t.text :description
      t.integer :capacity

      t.timestamps
    end
  end
end
