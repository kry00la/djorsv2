ActiveAdmin.register PackageCrew do
  menu :parent => "Manage Package"
  filter :package
  filter :crew
  form :html => { :enctype => "multipart/form-data" } do |f|
   f.inputs "Details" do
    f.input :package
    f.input :crew
    end
  f.buttons
 end
  
  
  controller do
    def new
      @package_crew = PackageCrew.new
    end
    
    def create
      @package = Package.find(params[:package_crew][:package_id])
      crew = Crew.find(params[:package_crew][:crew_id])
      
     @package_crew = @package.add_crew(crew.id)
     
     if @package_crew.save
       redirect_to {admin_package_crew_url}
     end
     
     def destroy
        @package_crew = PackageCrew.find(params[:id])
        @package_crew.remove_crew
        @package_crew.destroy
     end
    end
  end
end
