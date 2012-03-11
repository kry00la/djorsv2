class CreateCrews < ActiveRecord::Migration
  def change
    create_table :crews do |t|
      t.string :name
      t.text :description
      t.decimal :price

      t.timestamps
    end
  end
end
