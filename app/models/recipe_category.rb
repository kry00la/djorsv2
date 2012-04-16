class RecipeCategory < ActiveRecord::Base
 validates :name,:description, :presence => :true

end
