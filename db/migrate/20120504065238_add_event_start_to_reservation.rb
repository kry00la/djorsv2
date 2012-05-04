class AddEventStartToReservation < ActiveRecord::Migration
  def change
    add_column :reservations, :event_start, :time

  end
end
