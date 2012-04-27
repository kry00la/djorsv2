ActiveAdmin.register Menu do

  menu :parent => "Services"
  filter :menu_category
  filter :menu_type
  filter :name
  
  
    
  index do 
    column :name
    #column :price, :sortable => :price do |d|
   #   div :class => "price" do
    #    number_to_currency d.price, :unit => "&#8369;"
    #  end
 #   end
    column :menu_category
  #  column :menu_type
  default_actions
  end
  

  
   form :html => { :enctype => "multipart/form-data" } do |f|
   f.inputs "Details" do
    
    f.input :menu_category
    f.input :name
    f.input :desription
    
    end
  f.buttons
 end
 
 controller do
   before_filter :only => :index do
     @per_page = 10
   end
 end
end
