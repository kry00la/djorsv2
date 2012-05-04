class RemoveTimeEndFromReservation < ActiveRecord::Migration
  def up
    remove_column :reservations, :timeEnd
      end

  def down
    add_column :reservations, :timeEnd, :time
  end
end
