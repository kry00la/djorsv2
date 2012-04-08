class RemoveReservationIdFromPackageLineItems < ActiveRecord::Migration
  def up
    remove_column :package_line_items, :reservation_id
      end

  def down
    add_column :package_line_items, :reservation_id, :integer
  end
end
