class ContentMiniIntroU < ActiveRecord::Base
  validates :title ,:body ,:presence => :true
end
