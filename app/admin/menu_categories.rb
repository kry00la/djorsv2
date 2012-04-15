ActiveAdmin.register MenuCategory do
  menu :parent => "Service Category"
  filter :name, :as => :string
    
  index do 
    column :name
  default_actions
  end
  
end
