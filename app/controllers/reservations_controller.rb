class ReservationsController < InheritedResources::Base
  def new
    @reservation = Reservation.new
  end
  
  #def create
    
  #end
  
  def destroy
    @reservation = Reservation.find(params[:id])
    reservation = Reservation.find(params[:id])
    @reservation.remove_all_associated(reservation.id)
    @reservation.destroy
    redirect_to @reservation, :notice => "menu successfuly deleted"
        
  end

end
