class RemoveReservationPackageIdFromPackageLineItems < ActiveRecord::Migration
  def up
    remove_column :package_line_items, :reservation_package_id
      end

  def down
    add_column :package_line_items, :reservation_package_id, :integer
  end
end
