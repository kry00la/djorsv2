class FunctionRoom < ActiveRecord::Base
  has_many :reservation_function_rooms ,:dependent => :destroy
  has_attached_file :image_function_room, :styles => {:prev => "150x150",:original => "700x700", :medium => "200x200>", :thumb => "50x50>" }
  has_many :function_room_images ,:dependent => :destroy
  validates :image_function_room,:name,:description,:price ,:capacity,:presence => :true
  validates :name, :uniqueness => :true
  validates :price,:capacity ,:numericality => {:only_integer => true}
    
end

