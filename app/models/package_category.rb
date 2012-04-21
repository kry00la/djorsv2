class PackageCategory < ActiveRecord::Base
    validates :name, :description ,:presence => :true
end
