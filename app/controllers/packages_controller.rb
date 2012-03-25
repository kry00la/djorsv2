class PackagesController < InheritedResources::Base
  
  def index
    @packages = Package.all
  end
  
  def show
    @package = Package.includes(:package_crews => :crew).find(params[:id])
  end
  
 
end
