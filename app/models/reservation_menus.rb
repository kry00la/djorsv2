class ReservationMenus < ActiveRecord::Base\
  belongs_to :reservation
  belongs_to :menu
end
