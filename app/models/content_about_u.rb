class ContentAboutU < ActiveRecord::Base
  validates :title ,:body ,:presence => :true
end
