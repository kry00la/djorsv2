class AddTimeEndToReservations < ActiveRecord::Migration
  def change
    add_column :reservations, :time_end, :time

  end
end
