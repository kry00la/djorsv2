class Crew < ActiveRecord::Base
  has_many :package_crews
  validates :name,:description,:price ,:presence => :true
  validates :price, :numericality => true
  
end
