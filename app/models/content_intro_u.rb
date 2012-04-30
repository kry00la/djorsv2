class ContentIntroU < ActiveRecord::Base
  validates :title ,:body ,:presence => :true
  
end
