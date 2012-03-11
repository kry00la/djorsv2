class PackageCrewsController < InheritedResources::Base
  def new
    @package = Package.find(params[:package_id])
    @package_crew = @package.package_crews.build
  end
  
  def create
    @package = Package.find(params[:package_id])
    @package_crew = @package.package_crews.build(params[:package_crew])
    
    if @package_crew.save
      redirect_to @package
    end
  end
  
  
end
