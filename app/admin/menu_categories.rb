ActiveAdmin.register MenuCategory do
  menu :parent => "Service Category"
  filter :name, :as => :string
  
end
