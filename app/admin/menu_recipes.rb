ActiveAdmin.register MenuRecipe do
      menu :parent => "Group Manager" ,:label => "Build Menu"
    actions :all, :except => [:edit]
    filter :recipe
    filter :menu


    
  index do 
    column :recipe, :sortable => false
    column :menu, :sortable => false

  default_actions
  end
  
  
  form :html => { :enctype => "multipart/form-data" } do |f|
   f.inputs "Details" do
   f.input :menu
   f.input :recipe
  
  end
  f.buttons
 end
end
