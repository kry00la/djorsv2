class ReservationsController < InheritedResources::Base
  def index
    @reservations = Reservation.find(:all, :order => 'date')
  end

  def edit
    @reservation = Reservation.find(params[:id])
  
  end
  
  def new
    @reservation = Reservation.new
      #session[:reservation_id] << @reservation.id
  end
  
  def create
    @reservation = Reservation.new(params[:reservation])
    if @reservation.save
      create_reservation_session(@reservation.id)
      redirect_to @reservation, :notice => "Welcome please continue your registration"
    else
      render :action => :new
    end  
  end
  
  def destroy
    @reservation = Reservation.find(params[:id])
    reservation = Reservation.find(params[:id])
    
    if @reservation.destroy
      destroy_reservation_session
       redirect_to @reservation, :notice => "reservation Deleted"
    end
   
        
  end
 
end
