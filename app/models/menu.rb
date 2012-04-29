class Menu < ActiveRecord::Base
   #has_many :build_menu
	has_many :package_line_items
	has_many :menu_recipes
	has_many :recipes, :through => :menu_recipes, :uniq => true
	belongs_to :menu_category
	belongs_to :menu_type
	validates_uniqueness_of :name, :scope => :menu_category_id ,:message => 'Menu name already exsist in menu category'
#  validate :name, :uniqueness => true, :scope => :menu_category_id
  validates :menu_category,:name,:desription,:price ,:presence => :true 
 
  def open_menu_to_menu_recipe
    recipes = menu_recipes.recipe
  end
 
  def find_menu_for_reservation(menu_id)
    package_menu = menu_recipes.find_all_by_menu_id(menu_id)
    package_menu
  end
  
 
  def find_my_menu(menu_id)
   menu =  menu_recipes.find_all_by_menu_id(menu_id)
   menu
  end
 
   def find_my_recipe_id
      recipes = menu_recipes.find_all_by_menu_id
      recipes
   end
     
   def find_my_recipe
    recipes = menu_recipes.my_recipe_price
  end
  

   def my_price
     Array.wrap(menu_recipes).sum {|r| r.recipe.price} 
   end
 

  def sumofrecipe
    recipe = menu_recipes
    Array.wrap(recipe).sum {|recipe| recipe.price}
  end

	def add_recipe(recipe_id)
	  current_menu = build_menu.find_by_recipe_id(recipe_id)
	  if current_menu
	    current_menu
	  else
	    current_menu = build_menu.build(:recipe_id => recipe_id)
	    current_menu.price = current_menu.recipe.price
	    self.price = self.price + current_menu.price
	    self.save!
	  end
	  current_menu
	end
	

end
