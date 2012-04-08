class AddReservationPackageIdToPackageLineItem < ActiveRecord::Migration
  def change
    add_column :package_line_items, :reservation_package_id, :integer

  end
end
