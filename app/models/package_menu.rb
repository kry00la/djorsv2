class PackageMenu < ActiveRecord::Base
  belongs_to :menu
  belongs_to :package
  validates :menu, :package ,:presence => :true
  validates :menu, :package, :uniqueness => :true
end
