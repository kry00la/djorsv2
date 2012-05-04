class RemoveTimeStartFromReservation < ActiveRecord::Migration
  def up
    remove_column :reservations, :timeStart
      end

  def down
    add_column :reservations, :timeStart, :time
  end
end
