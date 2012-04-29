class ReservationPackage < ActiveRecord::Base
  belongs_to :reservation
  belongs_to :package
  has_many :package_line_items 
  
  def my_menu_price
    price = package_line_items.my_price_for_this_reservation
  end
  
  
  def remove_menu_from_package
    price=reservation.numGuest * self.price
    reservation.total_price = reservation.total_price - price
    reservation.save
  end
  
  def remove_package
    reservation.total_price = reservation.total_price - self.price
    reservation.save
  end

 
  def find_package_for_reservation_package(package_id)
     currentpackage = package.find_crew_for_reservation(package_id)
     currentpackage
  end
  
  def total_menu
    total_menu = package.sumofmenu
  end
  
  def total_crew
    total_crew = package.sumofcrew
  end
  

end
