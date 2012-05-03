class CreateImageSlides < ActiveRecord::Migration
  def change
    create_table :image_slides do |t|

      t.timestamps
    end
  end
end
