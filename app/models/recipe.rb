class Recipe < ActiveRecord::Base
  has_many :menu_recipes ,:dependent => :destroy
  has_many :menu_addons_line_items, :dependent => :destroy
  has_many :recipe_image, :dependent => :destroy
	#has_many :menus, :through => :menu_recipes, :uniq=> true
	belongs_to :menu_type
	belongs_to :recipe_category
  has_attached_file :image_recipe, :styles => { :medium => "250x250#",:prev =>"150x150#", :thumb => "50x50#" ,:cute => "30x30#"}
  validates :name,:description,:price,:recipe_category ,:presence => :true
  validates :price, :numericality => true
  validates :name ,:uniqueness => true
end
