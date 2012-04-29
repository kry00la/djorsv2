class ReservationRecipe < ActiveRecord::Base
  belongs_to :reservation
  belongs_to :recipe
end
