class Crew < ActiveRecord::Base
  has_many :package_crews
  has_many :package, :through => :package_crews
  validates :name,:description,:price ,:presence => :true
  validates :price, :numericality => true
  validates :name, :uniqueness => true 
end
