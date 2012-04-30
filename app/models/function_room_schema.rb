class FunctionRoomSchema < ActiveRecord::Base
   has_attached_file :schema, :styles => { :medium => "500x300#",:prev => "100x100#",:cute => "20x20#" }
end
