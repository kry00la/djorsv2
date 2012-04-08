class Crew < ActiveRecord::Base
  has_many :package_crews
end
