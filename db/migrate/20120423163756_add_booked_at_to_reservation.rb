class AddBookedAtToReservation < ActiveRecord::Migration
  def change
    add_column :reservations, :booked_at, :date

  end
end
