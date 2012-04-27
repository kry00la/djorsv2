ActiveAdmin.register PackageCrew  do
  menu :parent => "Group Manager" ,:label => "Add Crew package"
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
  
    end
  f.buttons
 end
 
    show do
      panel "Package" do
        attributes_table_for package_crew do
          row :package 
          row :created_at 
        end
      end
      active_admin_comments
    end
    
    sidebar :crew, :only => :show do
      attributes_table_for package_crew do
        row :crew
        row :quantity
        row :price
      end
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
              
              before_filter :only => :index do
              @per_page = 10
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
