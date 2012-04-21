class RecipeImage < ActiveRecord::Base
  belongs_to :recipe
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates :recipe ,:presence => :true
end
