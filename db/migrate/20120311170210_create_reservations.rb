class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.string :name
      t.string :address
      t.integer :contact
      t.date :date
      t.time :timeStart
      t.time :timeEnd
      t.integer :numGuest

      t.timestamps
    end
  end
end
