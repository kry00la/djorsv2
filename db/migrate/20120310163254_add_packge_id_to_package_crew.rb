class AddPackgeIdToPackageCrew < ActiveRecord::Migration
  def change
    add_column :package_crews, :package_id, :integer

  end
end
