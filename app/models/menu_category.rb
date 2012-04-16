class MenuCategory < ActiveRecord::Base
  validates :name ,:desription, :presence => :true
end
