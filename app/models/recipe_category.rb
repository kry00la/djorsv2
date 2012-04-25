class RecipeCategory < ActiveRecord::Base
  has_many :recipies , :dependent => :destroy
 validates :name,:description, :presence => :true
  validates :name ,:uniqueness => true
end
