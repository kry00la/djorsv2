module PagesHelper
    def display_menulist(reservation)
    unless reservation.reservation_package.nil?
      render 'menulist', :reservation => @reservation
    else
      render 'no_menulist', :reservation => @reservation
    end
  end
  
  def display_addon(reservation)
    unless reservation.menu_addons_line_items.nil?
      render 'addon', :reservation => @reservation
    else
      render 'no_addon', :reservation => @reservation 
     end
  end
  
end
