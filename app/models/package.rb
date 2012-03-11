class Package < ActiveRecord::Base
  has_many :crews
  has_many :package_crews
end
