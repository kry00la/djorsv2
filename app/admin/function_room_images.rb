ActiveAdmin.register FunctionRoomImage do
  menu :parent => "Manage Services"
  filter :function_room
  
  
  index do 
    column :function_room
    column :image 
  default_actions
  end
  
  
  
  form :html => { :enctype => "multipart/form-data" } do |f|
   f.inputs "Details" do
    f.input :function_room
    f.input :image, :as => :file, :hint => f.template.image_tag(f.object.image.url(:thumb))
    end
  f.buttons
 end
 
 
 controller do 
   def create 
      @function_room = FunctionRoomImage.new(params[:function_room_image])
      if @function_room.save
        redirect_to admin_function_room_image_path(@function_room), :notice => "image succesfully added"
      else
        redirect_to new_admin_function_room_image_url
      end
    end
  
 end

end
