class AddReservationOptionToReservation < ActiveRecord::Migration
  def change
    add_column :reservations, :reservation_option, :boolean

  end
end
