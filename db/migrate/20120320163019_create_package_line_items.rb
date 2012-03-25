class CreatePackageLineItems < ActiveRecord::Migration
  def change
    create_table :package_line_items do |t|
      t.integer :reservation_id
      t.integer :menu_id
     

      t.timestamps
    end
  end
end
