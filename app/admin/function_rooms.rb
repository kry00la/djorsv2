ActiveAdmin.register FunctionRoom do
  menu :parent => "Services"
  
   form :html => { :enctype => "multipart/form-data" } do |f|
   f.inputs "Details" do
    f.input :name
    f.input :description
    f.input :price
    f.input :image_function_room, :as => :file  #,:hint => "current image: #{f.template.image_tag(f.object.image_function_room.url(:thumb))}"
    end
  f.buttons
 end
 
end
