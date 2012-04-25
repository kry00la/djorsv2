ActiveAdmin.register PackageCrew  do
  menu :parent => "Group Manager" ,:label => "Crew for package"
   actions :all, :except => [:edit]
  filter :package
  filter :crew
  
 
  index do 
    column :package
    column :crew
    column :quantity
 
  default_actions
  end
  
  
  
  
  
  form :html => { :enctype => "multipart/form-data" } do |f|
   f.inputs "Details" do
    f.input :package
    f.input :crew
    #f.input :quantity , :as => :string
    end
  f.buttons
 end
  
  


  
  
  
    controller do
               

               def create
                 @package = Package.find(params[:package_crew][:package_id])
                     crew = Crew.find(params[:package_crew][:crew_id])
                 
                  @package_crew = @package.add_crew(crew.id)
                     if @package_crew.save
                         redirect_to {admin_package_crew_url}
                     end                 
               end
              
              
                      
                 # def destroy
#                    
                      # @package_crew = PackageCrew.find(params[:id])
                      # @package_crew.remove_crew
#                       
                      # if @package_crew.destroy
                       # redirect_to :action => :index, :notice => "This is a test notice!"
                      # end
                   
              #   end
      end
end
