class CreatePackageCrews < ActiveRecord::Migration
  def change
    create_table :package_crews do |t|

      t.timestamps
    end
  end
end
