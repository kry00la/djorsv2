class MenuRecipe < ActiveRecord::Base
	belongs_to :recipe
	belongs_to :menu
	validates :menu, :recipe ,:presence => :true
  

  def my_recipe_price
     Array.wrap(recipe).sum {|r| r.price} 
  end
  
	def remove_recipe
	  menu.price = menu.price - self.recipe.price
	  menu.save!
	 	end
end
