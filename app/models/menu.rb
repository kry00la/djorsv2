class Menu < ActiveRecord::Base
 
	has_many :package_line_items
	has_many :menu_recipes
	has_many :recipes, :through => :menu_recipes, :uniq => true
	belongs_to :menu_category

end
