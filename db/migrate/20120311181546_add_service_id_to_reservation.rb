class AddServiceIdToReservation < ActiveRecord::Migration
  def change
    add_column :reservations, :service_id, :integer

  end
end
