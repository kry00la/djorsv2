class FunctionRoom < ActiveRecord::Base
  has_many :reservation_function_rooms ,:dependent => :destroy
  has_attached_file :image_function_room, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  has_many :function_room_images ,:dependent => :destroy
  validates :name,:description,:price ,:presence => :true
  validates :name, :uniqueness => :true
end

