class MenuRecipe < ActiveRecord::Base
	belongs_to :recipe
	belongs_to :menu
	validates :menu, :recipe ,:presence => :true
	def remove_crew
	  menu.price = menu.price - self.recipe.price
	  menu.save!
	 	end
end
