ActiveAdmin.register Recipe do
  menu :parent => "Services"
  filter :name, :as => :string
  filter :price, :as => :numeric
  
    
  index do 
    column :name
    column "profile image",:image_recipe
    column :recipe_category
      column :price, :sortable => :price do |function|
      div :class => "price" do
        number_to_currency function.price, :unit => "&#8369;"
      end
    end
  default_actions
  end
  
  
  
  form :html => { :enctype => "multipart/form-data" } do |f|
   f.inputs "Details" do
    f.input :name
    f.input :description
    f.input :price, :as => :string
    f.input :recipe_category
    f.input :image_recipe, :as => :file, :hint => f.template.image_tag(f.object.image_recipe.url(:thumb))
    #f.input :image_recipe, :as => :file  ,:hint => "current image: #{f.template.image_tag(f.object.image_recipe.url(:thumb))}"
    #f.input :image, :as => :file
    end
  f.buttons
 end
 
 
 

 
end
