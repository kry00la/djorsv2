class PublicController < ApplicationController
  def index
    @aboutUs = ContentAboutU.find(1)
    @mini = ContentMiniIntroU.find(1)
    @welcome =ContentIntroU.find(1)
    @slides = ImageSlide.all
  end
  
  
  def aboutus
    @aboutUs =ContentAboutU.find(1)
  end
  
  def contactus
    
  end
  
  def menus
    @menu = Menu.all
    @recipes =Recipe.all
  end
  
  def functionrooms
    @functionrooms = FunctionRoom.all
  end
  
  def functionalone_publics
    @functionroom = FunctionRoom.find(params[:function_room_id])
  end
  
  def package_publics
    
  end
  
end
