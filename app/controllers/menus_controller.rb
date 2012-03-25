class MenusController < InheritedResources::Base
  def index
    @menus = Menu.all
  end
  
  def show
    @menu = Menu.includes(:menu_recipes =>:recipe).find(params[:id])

  end
  
  def destroy
    @menu = Menu.find(params(:id))
    @menu.destroy
  end
end
