class ReservationsController < InheritedResources::Base
  def edit
    @reservation = Reservation.find(params[:id])
  end
  
  def new
    @reservation = Reservation.new
  end
  
  def create
    @reservation = Reservation.new(params[:reservation])
    
    if @reservation.save
    #  @reservation.compute_for_total_hours
      redirect_to @reservation, :notice => "created"
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
