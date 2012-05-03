ActiveAdmin.register ImageSlide do
  menu :label => "Image Slides" ,:parent => "Utilities"
  
  
   index do 
   
    column " ",:image do |slide|
      image_tag(slide.image.url(:cute))
    end
     
  default_actions
  end
  
  #########################################
  
  form :html => { :enctype => "multipart/form-data" } do |f|
   f.inputs "Details" do
    f.input :label
    f.input :qoute
    f.input :image, :as => :file, :hint => f.template.image_tag(f.object.image.url(:thumb)),:hint => "not less than 300x300 image size" 
    end
  f.buttons
 end
 
 ####################
 
  
  
  
end
