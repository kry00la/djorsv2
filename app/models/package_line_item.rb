class PackageLineItem < ActiveRecord::Base

 
  belongs_to :menu
  belongs_to :reservation
  
  def remove_menu
    reservation.reservation_package.price = reservation.reservation_package.price - self.price
    reservation.reservation_package.save
    reservation.total_price = reservation.total_price - self.price
    reservation.save
  end
  

  
end
