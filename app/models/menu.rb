class Menu < ActiveRecord::Base
	has_many :recipes
	has_many :menu_recipes
	belongs_to :menu_category
end
