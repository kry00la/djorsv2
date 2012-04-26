class FunctionRoomImage < ActiveRecord::Base
  belongs_to :function_room
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates :function_room, :presence => :true
end
