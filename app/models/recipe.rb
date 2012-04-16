class Recipe < ActiveRecord::Base
  has_many :menu_recipes
  has_many :menu_addons_line_items
	#has_many :menus, :through => :menu_recipes, :uniq=> true
	belongs_to :recipe_category
  has_attached_file :image_recipe, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates :name,:description,:price,:recipe_category ,:presence => :true
  validates :price, :numericality => true
end
