class AddReservationIdFromPackageLineItems < ActiveRecord::Migration
  def change
    add_column :package_line_items, :reservation_id, :integer

  end
end
