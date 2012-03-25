class AddPackageIdToLineReservation < ActiveRecord::Migration
  def change
    add_column :line_reservations, :package_id, :integer

  end
end
