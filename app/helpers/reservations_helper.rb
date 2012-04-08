module ReservationsHelper
  def display_package(reservation)
    unless reservation.reservation_package.nil?
      render 'package', :reservation => @reservation
    else
      render 'no_package', :reservation => @reservation
    end
  end
  
  def display_function_room(reservation)
    unless reservation.reservation_function_rooms.nil?
      render 'function_room',:reservation => @reservation
    else
      render 'no_function_room' , :reservation => @reservation
    end
  end
  
  def display_packageprice(reservation)
    unless reservation.reservation_package == 0
      render 'no_packageprice' , :reservation => @reservation
    else
      render 'packageprice',:reservation => @reservation
    end
  end
end
