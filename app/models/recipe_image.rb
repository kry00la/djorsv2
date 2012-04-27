class RecipeImage < ActiveRecord::Base
  belongs_to :recipe
  has_attached_file :image, :styles => { :prev => "150x150" ,:medium => "300x300#", :thumb => "100x100#" ,:cute =>"30x30#"}
  validates :recipe ,:presence => :true
end
