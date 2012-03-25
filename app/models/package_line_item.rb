class PackageLineItem < ActiveRecord::Base

 
  belongs_to :menu
  belongs_to :reservation
end
