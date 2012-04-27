ActiveAdmin.register Crew do
  menu :parent => "Services"
  filter :name, :as => :string
  filter :price, :as => :numeric
    
  index do 
    column :name
     column :price, :sortable => :price do |d|
      div :class => "price" do
        number_to_currency d.price, :unit => "&#8369;"
      end
    end
  default_actions
  end
  
   form :html => { :enctype => "multipart/form-data" } do |f|
   f.inputs "Details" do
    f.input :name
    f.input :description
    f.input :price, :as => :string ,:hint => "per person"
   end
  f.buttons
 end
  
  
  show :title => :name, :only => :show do
          panel "Details" do
             attributes_table_for crew do
              row :id
              row :name
              row :price
              row :description
              row :created_at
            end
          end
           active_admin_comments
        end
  
  controller do
    
    before_filter :only => :index do
              @per_page = 10
             end
   # def destroy
     # @crew = Crew.find(params[:id])
    #  if @crew.package_crews.destroy
   #     redirect_to :action => :index, :notice => "Crew deleted"
   #   end
      #@crew.destroy
      
  #  end
  end
end
