class CreateReservationPackages < ActiveRecord::Migration
  def change
    create_table :reservation_packages do |t|

      t.timestamps
    end
  end
end
