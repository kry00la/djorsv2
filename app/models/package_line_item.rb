class PackageLineItem < ActiveRecord::Base
  belongs_to :menu
  belongs_to :reservation
  

  
  def open_menu_by_package(package_id)
    menus= self.find_all_by_package_id(package_id)
    menus.each do |men|
      recipes = menu.find_all_by_menu_id(men.menu_id)
    end
    recipes
  end
  
  
  def find_my_menu_here(menu_id)
    #recipes = self.find_all_by_menu
  end
  
  
  def my_menu_price_for_this_reservation
     price = menu.my_price
   end
  
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
