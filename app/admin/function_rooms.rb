ActiveAdmin.register FunctionRoom do
  menu :parent => "Services"
  filter :name, :as => :string
  filter :price, :as => :numeric
  
  
    
  index do 
    column :name
    column :capacity
     column :price, :sortable => :price do |function|
      div :class => "price" do
        number_to_currency function.price, :unit => "&#8369;"
      end
    end
  default_actions
  end
  
  show :title => :name, :only => :show do
          panel "Details" do
             attributes_table_for function_room do
              row :id
              row :name
              row :description
              row :capacity
              row :price
              row :created_at
            end
          end
           active_admin_comments
        end
         sidebar :function_room, :only => :show do
         div do
            attributes_table_for function_room do
              row :image_function_room do
                 image_tag(function_room.image_function_room.url(:medium))
              end
            end
         end
        end
        
  
  
   form :html => { :enctype => "multipart/form-data" } do |f|
   f.inputs "Details" do
    f.input :name 
    f.input :description
    f.input :capacity , :as => :string
    f.input :price, :as => :string
    f.input :image_function_room,:label => "Function room Schema", :as => :file, :hint => f.template.image_tag(f.object.image_function_room.url(:thumb)),:hint => "not less than 300x300 image size"
    end
  f.buttons
 end
 
 
 controller do
     before_filter :only => :index do
    @per_page = 10
  end
 end
end
