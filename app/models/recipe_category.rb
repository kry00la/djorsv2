class RecipeCategory < ActiveRecord::Base
  has_many :recipes , :dependent => :destroy
 validates :name,:description, :presence => :true
  validates :name ,:uniqueness => true
end
