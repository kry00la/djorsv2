ActiveAdmin.register FunctionRoomImage do
  menu :parent => "Manage Services"
  
  form :html => { :enctype => "multipart/form-data" } do |f|
   f.inputs "Details" do
    f.input :function_room
    f.input :image, :as => :file
    #f.input :image_recipe, :as => :file  ,:hint => "current image: #{f.template.image_tag(f.object.image_recipe.url(:thumb))}"
    #f.input :image, :as => :file
    end
  f.buttons
 end
 
 
 controller do

   
   def create
      @function_room = FunctionRoomImage.new(params[:function_room_image])
      @function_room.save
   end
 end

end
