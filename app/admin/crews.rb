ActiveAdmin.register Crew do
  menu :parent => "Services"
  filter :name, :as => :string
  filter :price, :as => :numeric
    
  index do 
    column :name
    column :price
  default_actions
  end
  
end
