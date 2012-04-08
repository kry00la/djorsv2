class MenuAddonsLineItem < ActiveRecord::Base
	belongs_to :recipe
	belongs_to :reservation
	
	def remove_addon
	  reservation.reservation_package.price = reservation.reservation_package.price - self.recipe.price
	  reservation.reservation_package.save
	  reservation.total_price -= self.recipe.price
	  reservation.save
	end
	
end
