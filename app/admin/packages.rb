ActiveAdmin.register Package do
  menu :parent => "Services"
  filter :name, :as => :string
  filter :price, :as => :numeric
end
