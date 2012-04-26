ActiveAdmin.register PackageMenu do
   menu :parent => "Group Manager" ,:label => "Menu for package"
   actions :all, :except => [:edit]    
   index do 
    column :package
    column :menu
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
