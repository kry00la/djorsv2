class AddEventEndToReservation < ActiveRecord::Migration
  def change
    add_column :reservations, :event_end, :time

  end
end
