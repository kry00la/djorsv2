class MenuRecipe < ActiveRecord::Base
	belongs_to :recipe
	belongs_to :menu
end
