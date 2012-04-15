ActiveAdmin.register Recipe do
  menu :parent => "Services"
  filter :name, :as => :string
  filter :price, :as => :numeric
  
  form :html => { :enctype => "multipart/form-data" } do |f|
   f.inputs "Details" do
    f.input :name
    f.input :description
    f.input :price
    f.input :recipe_category
    f.input :image_recipe, :as => :file
    #f.input :image_recipe, :as => :file  ,:hint => "current image: #{f.template.image_tag(f.object.image_recipe.url(:thumb))}"
    #f.input :image, :as => :file
    end
  f.buttons
 end
 
 
 controller do
   def new
     @recipe = Recipe.new
   end
   
   def create
      @recipe = Recipe.new(params[:recipe])
      @recipe.save
   end
 end

 
end
