class PackageCategory < ActiveRecord::Base
    validates :name, :description ,:presence => :true
    validates :name, :uniqueness => :true
    has_many :package , :dependent => :destroy
end
