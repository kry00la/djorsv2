ActiveAdmin.register Package do
  menu :parent => "Services"
  filter :name, :as => :string
  filter :price, :as => :numeric
  
    
  index do 
    column :name
    column :package_category
    column :price, :sortable => :price do |d|
            div :class => "price" do
        number_to_currency d.price, :unit => "&#8369;"
      end
    end
  default_actions
  end
  
  
    show :title => :name, :only => :show do
          panel "Details" do
             attributes_table_for package do
              row :id
              row :name
              row :price
              row :description
              row :created_at
              row :package_category
            end
          end
           active_admin_comments
        end
  
  
   form :html => { :enctype => "multipart/form-data" } do |f|
   f.inputs "Details" do
     f.input :package_category
    f.input :name 
    f.input :description
    f.input :price, :as => :string ,:hint => "Initial Price"
   end
  f.buttons
 end
  
end
