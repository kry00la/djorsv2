class Package < ActiveRecord::Base
  has_one :reservation_package
  has_many :crews, :through => :package_crews, :uniq => true
  has_many :package_crews
 
  

end
