ActiveAdmin.register FunctionRoomSchema do
   menu :label => "Function room schema" ,:parent => "Utilities"
   actions :all, :except => [:destroy]

    index do 
    column "schema",:schema do |schema|
       image_tag(schema.schema.url(:cute))
    end
   
    default_actions
    end

    form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs "Add Image to recipe" do
   
    f.input :schema, :as => :file,:hint => "not less than 500x300 image size", :label => "Function Room Schema"

    end
  f.buttons
 end
 
 
 
 
  show do
   panel "Details" do 
     attributes_table_for function_room_schema do
       row :created_at
     end
   end
   active_admin_comments
 end
 
 sidebar :Schema_image ,:only => :show do
   attributes_table_for function_room_schema do
     row :schema do 
       image_tag(function_room_schema.schema.url(:prev))
     end
   end
 end
 
 
 
 end