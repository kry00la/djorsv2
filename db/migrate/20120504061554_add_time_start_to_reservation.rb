class AddTimeStartToReservation < ActiveRecord::Migration
  def change
    add_column :reservations, :time_start, :time

  end
end
