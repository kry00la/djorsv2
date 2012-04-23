class BookReservationsController < ApplicationController
  def success
    
  end

  def fail
    
  end

  def new
   @book_reservation = BookReservation.new
  # create_reservation_session(@reservation.id)
 end

def create
    
    @book_reservation=current_reservation.build_book_reservation(params[:book_reservation])
    @book_reservation.ip_address = request.remote_ip
    if @book_reservation.save
       create_reservation_session(@reservation.id)
      if @book_reservation.booked
         render :action => "success" and return
       else
         render :action => "fail" and return
       end
    end
    else
      render :action => 'new'
    end
 
 
  
end
