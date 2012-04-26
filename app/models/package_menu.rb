class PackageMenu < ActiveRecord::Base
  belongs_to :menu
  belongs_to :package
  validates :menu, :package ,:presence => :true

end
