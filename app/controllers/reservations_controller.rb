class ReservationsController < InheritedResources::Base
  

  def edit
    @reservation = Reservation.find(params[:id])
     # session[:reservation_id] << @reservation.id
  end
  
  def new
    @reservation = Reservation.new
      #session[:reservation_id] << @reservation.id
  end
  
  def create
    @reservation = Reservation.new(params[:reservation])
    if @reservation.save
      create_reservation_session(@reservation.id)
    #  @reservation.compute_for_total_hours
      redirect_to @reservation, :notice => "created"
    else
      render :action => :new
    end  
  end
  
  def destroy
    @reservation = Reservation.find(params[:id])
    reservation = Reservation.find(params[:id])
    @reservation.remove_all_associated(reservation.id)
    @reservation.destroy
    redirect_to @reservation, :notice => "menu successfuly deleted"
        
  end
 
end
