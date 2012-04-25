class MenuCategory < ActiveRecord::Base
  has_many :menus ,:dependent => :destroy
  validates :name ,:desription, :presence => :true
  validates :name ,:uniqueness => true
end
