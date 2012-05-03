class ImageSlide < ActiveRecord::Base
  has_attached_file :image, :styles => {:prev => "150x150#" ,:original => "580x350#", :thumb => "50x50#" ,:cute =>"30x30#"  }
end
