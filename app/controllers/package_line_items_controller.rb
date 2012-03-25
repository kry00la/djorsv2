class PackageLineItemsController < InheritedResources::Base
  def index 
    @package_line_items = PackageLineItem.all
  end
  
  
  def show
    # @package_line_item = PackageLineItem.find(params[:id])
     @reservation = Reservation.includes(:package_line_items => :menu).find(params[:id])
  end
  
  
  def new
   # @reservation = Reservation.find(params[:reservation_id])
   #package = Package.find(params[:package_id])
   # @package_line_item = @reservation.package.package_line_items.build
  
    #@package = Package.find(params[:package_id])
   # @package_line_item = @package.package_line_items.build
    @reservation = Reservation.find(params[:reservation_id])
      #@package = Package.find(params[:package_id])
      
    @package_line_item = @reservation.package_line_items.build
  end
  
  def create
   
    @reservation = Reservation.find(params[:reservation_id])
    #package = reservation.current_package(reservation.id)
  #  @package = @reservation.reservation_package.find_by_package_id(:reservation_id)
  #  @package = @reservation_package.find_by_package_id(:reservation_id)
    @package_line_item = @reservation.package_line_items.build(params[:package_line_item])
  
    if @package_line_item.save
      redirect_to @reservation ,:notice => "added menu"
    end 
    
  end
  
  
  
  
  
end
