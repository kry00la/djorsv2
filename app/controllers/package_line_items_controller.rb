class PackageLineItemsController < InheritedResources::Base

  
  
  def new
    @package_line_item = PackageLineItems.new
  end
  
  def create
    @reservation = Reservation.find(params[:reservation_id])
    menu = Menu.find(params[:menu_id])
    @package_line_item = @reservation.add_menu(menu.id)
    if @package_line_item.save
     redirect_to package_reservation_pages_url, :notice => "menu successfuly added"
    end 
  end
  
  
  def destroy
    @reservation = Reservation.find(params[:reservation_id])
    reservation = Reservation.find(params[:reservation_id])
    @package_line_item = @reservation.package_line_items.find(params[:id])
    #@package_line_item = @reservation.find_my_menu(params[:id])
    #@reservation.remove_menu
    @package_line_item.remove_menu
   #@reservation.remove_packagemenu(reservation.id)
    @package_line_item.destroy
    redirect_to package_reservation_pages_url, :notice => "menu successfuly deleted"
  end
  
  
  
  
end
