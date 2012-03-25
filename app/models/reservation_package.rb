class ReservationPackage < ActiveRecord::Base
  belongs_to :reservation
  belongs_to :package
  

end
