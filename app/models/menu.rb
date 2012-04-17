class Menu < ActiveRecord::Base
 
	has_many :package_line_items
	has_many :menu_recipes
	has_many :recipes, :through => :menu_recipes, :uniq => true
	belongs_to :menu_category
	belongs_to :menu_type

  validates :menu_category,:name,:desription,:price ,:presence => :true
  

  def sumofrecipe
    recipe = menu_recipes
    Array.wrap(recipe).sum {|recipe| recipe.price}
  end

	def add_recipe(recipe_id)
	  current_menu = menu_recipes.find_by_recipe_id(recipe_id)
	  if current_menu
	    current_menu
	  else
	    current_menu = menu_recipes.build(:recipe_id => recipe_id)
	    current_menu.price = current_menu.recipe.price
	    self.price = self.price + sumofrecipe
	    self.save!
	  end
	  current_menu
	end
	

end
