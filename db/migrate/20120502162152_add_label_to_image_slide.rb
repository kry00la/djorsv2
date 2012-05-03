class AddLabelToImageSlide < ActiveRecord::Migration
  def change
    add_column :image_slides, :label, :string

    add_column :image_slides, :qoute, :text

  end
end
