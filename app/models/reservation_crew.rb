class ReservationCrew < ActiveRecord::Base
  belongs_to :reservation
  belongs_to :crew
  
  
  def total_price
    price * quantity
  end
end
