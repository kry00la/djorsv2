class CreatePackageCategories < ActiveRecord::Migration
  def change
    create_table :package_categories do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
