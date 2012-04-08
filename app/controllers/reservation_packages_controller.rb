class ReservationPackagesController < InheritedResources::Base

  def index
  #  redirect_to Reservation.find(params[:reservation_id])
  end

  def show
    #@package = Package.all
   # redirect_to Reservation.find(params[:reservation_id])
    #@reservation_package = ReservationPackage.find(params[:reservation_id])
  #  @reservation = Reservation.includes(:reservation_package => :package).find(params[:id])
  end

  def new
    @reservation_package = ReservationPackage.new

  end
  
  def create  
    @reservation = Reservation.find(params[:reservation_id])
    package = Package.find(params[:package_id])
    @reservation_package = @reservation.add_package(package.id)
     @reservation.add_reservationcrew(package.id)
    
    if @reservation_package.save
      redirect_to @reservation, :notice => 'package was successfulyy added'
   else
     render :action => "new"
    end
  end
  
   def edit
    @reservation = Reservation.find(params[:reservation_id])
    @reservation_package= @reservation.reservation_package
  end
  
  def update
    @reservation = Reservation.find(params[:reservation_id])
    @reservation_package= @reservation.reservation_package
    
    if @reservation_package.update_attributes(params[:reservation_package])
      redirect_to @reservation ,:notice => 'Package successfuly update'
    else
      render :action => "edit"
    end
  end
  
   def destroy
    @reservation = Reservation.find(params[:reservation_id])
    reservation =  Reservation.find(params[:reservation_id])
    @reservation_package = @reservation.reservation_package
    @reservation.remove_packageitems(reservation.id)
    @reservation_package.remove_package
    @reservation_package.destroy
    redirect_to @reservation
  end
end