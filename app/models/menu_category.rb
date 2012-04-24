class MenuCategory < ActiveRecord::Base
  validates :name ,:desription, :presence => :true
  validates :name ,:uniqueness => true
end
