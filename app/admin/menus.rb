ActiveAdmin.register Menu do
  menu :parent => "Services"
  filter :menu_category
  filter :name
   form :html => { :enctype => "multipart/form-data" } do |f|
   f.inputs "Details" do
    f.input :menu_category
    f.input :name
    f.input :desription
    #f.input :price, :as => :string
    #f.input :image_function_room, :as => :file  #,:hint => "current image: #{f.template.image_tag(f.object.image_function_room.url(:thumb))}"
    end
  f.buttons
 end
end
