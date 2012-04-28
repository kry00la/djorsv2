ActiveAdmin.register PackageMenu do
   menu :parent => "Group Manager" ,:label => "Build Package"
   actions :all, :except => [:edit]    
   index do 
    column :package, :sortable => false
    column :menu, :sortable => false
  default_actions
  end
  
  
  
  
  
  form :html => { :enctype => "multipart/form-data" } do |f|
   f.inputs "Details" do
    f.input :package
    f.input :menu
    end
  f.buttons
 end
 
 
end
