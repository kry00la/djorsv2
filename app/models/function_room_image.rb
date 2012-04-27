class FunctionRoomImage < ActiveRecord::Base
  belongs_to :function_room
  has_attached_file :image, :styles => {:prev => "150x150#" ,:medium => "200x200#", :thumb => "50x50#" ,:cute =>"30x30#"  }
  validates :function_room, :presence => :true
end
