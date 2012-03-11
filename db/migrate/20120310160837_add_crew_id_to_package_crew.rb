class AddCrewIdToPackageCrew < ActiveRecord::Migration
  def change
    add_column :package_crews, :crew_id, :integer

  end
end
