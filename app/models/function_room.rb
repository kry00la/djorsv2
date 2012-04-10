class FunctionRoom < ActiveRecord::Base
  has_many :reservation_function_rooms
  
  
  #############
  has_attached_file :image_function_room, :styles => { :medium => "300x300>", :thumb => "100x100>" }
end

