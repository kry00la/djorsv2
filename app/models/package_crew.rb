class PackageCrew < ActiveRecord::Base
  belongs_to :package
  belongs_to :crew
  validates :crew, :package ,:presence => :true
  def total_price
    price * quantity
  end
     
  def remove_crew
    package.reservation_package.price =  package.reservation_package.price - self.crew.price
    package.reservation_package.save
  end
end
