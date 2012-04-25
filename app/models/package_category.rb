class PackageCategory < ActiveRecord::Base
    validates :name, :description ,:presence => :true
    has_many :package , :dependent => :destroy
end
