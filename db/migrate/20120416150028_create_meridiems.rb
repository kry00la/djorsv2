class CreateMeridiems < ActiveRecord::Migration
  def change
    create_table :meridiems do |t|
      t.string :meridiemoffset
      t.integer :value

      t.timestamps
    end
  end
end
