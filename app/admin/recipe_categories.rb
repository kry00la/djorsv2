ActiveAdmin.register RecipeCategory do
  menu :parent => "Service Category"
   filter :name, :as => :string
    
  index do 
    column :name, :sortable => false
   
  default_actions
  end
  
    show :title => :name, :only => :show do
          panel "Details" do
             attributes_table_for recipe_category do
              row :name
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
        end
end
