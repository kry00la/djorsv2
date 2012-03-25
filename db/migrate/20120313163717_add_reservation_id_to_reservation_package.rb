class AddReservationIdToReservationPackage < ActiveRecord::Migration
  def change
    add_column :reservation_packages, :reservation_id, :integer

  end
end
