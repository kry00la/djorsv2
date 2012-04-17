class AddTotalHourToReservation < ActiveRecord::Migration
  def change
    add_column :reservations, :total_hour, :integer

  end
end
