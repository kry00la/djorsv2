ActiveAdmin.register FunctionRoomSchema do
   menu :label => "Function room schema" ,:parent => "Utilities"
   actions :all, :except => [:destroy]

   

    form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs "Add Image to recipe" do
   
    f.input :schema, :as => :file,:hint => "not less than 500x300 image size", :label => "Function Room Schema"

    end
  f.buttons
 end
 
 
 
 
  

 
 
 
 end