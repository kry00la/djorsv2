class CreateReservationCrews < ActiveRecord::Migration
  def change
    create_table :reservation_crews do |t|
      t.integer :crew_id
      t.integer :reservation_id
      t.integer :quantity
      t.decimal :price

      t.timestamps
    end
  end
end
