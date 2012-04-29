class MenuAddonsLineItem < ActiveRecord::Base
	belongs_to :recipe
  belongs_to :reservation
	



  def remove_addon
    price = self.recipe.price * reservation.numGuest
    reservation.reservation_package.price = reservation.reservation_package.price - price
    reservation.reservation_package.save
    reservation.total_price = reservation.total_price - price
    reservation.save
  end
	
end
