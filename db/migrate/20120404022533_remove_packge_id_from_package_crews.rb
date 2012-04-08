class RemovePackgeIdFromPackageCrews < ActiveRecord::Migration
  def up
    remove_column :package_crews, :packge_id
      end

  def down
    add_column :package_crews, :packge_id, :integer
  end
end
