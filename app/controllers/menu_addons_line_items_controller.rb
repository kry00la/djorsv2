class MenuAddonsLineItemsController < InheritedResources::Base
  
  def new
    @menu_addon = MenuAddonsLineItems.new
  end
  
  def create
    @reservation = Reservation.find(params[:reservation_id])
    recipe = Recipe.find(params[:recipe_id])
    @menu_addon = @reservation.add_addon(recipe.id)
    
    if @menu_addon.save
      redirect_to @reservation, :notice => "add on successfuly added"
    end
  end
  
  def destroy
    @reservation = Reservation.find(params[:reservation_id])
    @menu_addon = @reservation.menu_addons_line_items.find(params[:id])
    @menu_addon.remove_addon
    @menu_addon.destroy
    redirect_to @reservation, :notice => "delete addons"
  end
  
  
  
  
end
