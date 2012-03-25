class AddPackageIdToReservationPackage < ActiveRecord::Migration
  def change
    add_column :reservation_packages, :package_id, :integer

  end
end
