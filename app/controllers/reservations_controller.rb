class ReservationsController < InheritedResources::Base
  def index
    @reservations = Reservation.find(:all, :order => 'date')
  end

  def edit
    @reservation = Reservation.find(params[:id])
  end
  
  def show
    @reservation = Reservation.find(params[:id])
  end
  
  def new
    @reservation = Reservation.new
  end
  
  def update
    @reservation = Reservation.find(params[:id])
    if @cart.update_attributes(params[:cart])
      redirect_to @reservation , :notice => "You have successfuly Update Your Ticket"
      
    end
  end
  
  def create
    @reservation = Reservation.new(params[:reservation])
    if @reservation.save
      Notifier.reservation_received(@reservation).deliver
      create_reservation_session(@reservation.id)
      redirect_to public_url, :notice => "Congratiolations you have just requested a reservation at doh-joe event place please check your email
for the continuation of the request thank you from doh-joe management"
    else
      render :action => :new
    end  
  end
  
  def destroy
    @reservation = Reservation.find(params[:id])
    reservation = Reservation.find(params[:id])
    
    if @reservation.destroy
      destroy_reservation_session
       redirect_to @reservation, :notice => "You Successfully terminate your reservation thank you for your time"
    end
   
        
  end
 
end
