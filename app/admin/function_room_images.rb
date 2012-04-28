ActiveAdmin.register FunctionRoomImage do
  menu :parent => "Image Manager" ,  :label => "Function Room Image Manager" 
  filter :function_room
  
  
  index do 
   
    column " ",:image do |function_room|
      image_tag(function_room.image.url(:cute))
    end
     column :function_room, :sortable => false
  default_actions
  end
  
  #########################################
  
  form :html => { :enctype => "multipart/form-data" } do |f|
   f.inputs "Details" do
    f.input :function_room, :sortable => false
    f.input :image, :as => :file, :hint => f.template.image_tag(f.object.image.url(:thumb)),:hint => "not less than 300x300 image size" ,:multipart => true      
    end
  f.buttons
 end
 
 ####################
 
  show do
   panel "Details" do 
     attributes_table_for function_room_image do
       row :function_room
       row :created_at
     end
   end
    active_admin_comments
 end
  
   
 sidebar :function_room_image , :only => :show do
   attributes_table_for function_room_image do
        row :image do
     image_tag(function_room_image.image.url(:prev))
   end
   end
 end
 
 
 #################
 
 
 controller do 
   def create 
      @function_room = FunctionRoomImage.new(params[:function_room_image])
      if @function_room.save
        redirect_to admin_function_room_image_path(@function_room), :notice => "image succesfully added"
      else
        redirect_to new_admin_function_room_image_url
      end
    end
  before_filter :only => :index do
    @per_page = 10
  end
  
 end

end
