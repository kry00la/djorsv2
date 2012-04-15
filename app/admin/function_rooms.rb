ActiveAdmin.register FunctionRoom do
  menu :parent => "Services"
  filter :name, :as => :string
  filter :price, :as => :numeric
   form :html => { :enctype => "multipart/form-data" } do |f|
   f.inputs "Details" do
    f.input :name
    f.input :description
    f.input :price, :as => :string
    f.input :image_function_room, :as => :file  #,:hint => "current image: #{f.template.image_tag(f.object.image_function_room.url(:thumb))}"
    end
  f.buttons
 end
 
end
