class PublicController < ApplicationController
  def index
    @aboutUs = ContentAboutU.find(1)
    @mini = ContentMiniIntroU.find(1)
    @welcome =ContentIntroU.find(1)
    
  end
end
