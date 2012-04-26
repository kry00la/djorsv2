class CreateMmenus < ActiveRecord::Migration
  def change
    create_table :mmenus do |t|
      t.string :name
      t.string :description
      t.integer :menu_category_id

      t.timestamps
    end
  end
end
