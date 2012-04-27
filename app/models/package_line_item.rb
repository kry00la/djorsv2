class PackageLineItem < ActiveRecord::Base
  belongs_to :menu
  belongs_to :reservation
  
  def open_menu
     menu = self.menu.open_menu_recipe
  end
  
  def get_menu_price 
    self.menu.my_price
  end
  
  def remove_menu
    price = self.menu.my_price * reservation.numGuest
    reservation.reservation_package.price = reservation.reservation_package.price - price
    reservation.reservation_package.save
    reservation.total_price = reservation.total_price - price
    reservation.save
  end
  
  def remove_menu_upon_destory(reservation_id)
     menus = self.find_all_by_reservation_id(reservation_id)
     menus.each do |menu|
     menu.destroy
      end
  end

  
end
