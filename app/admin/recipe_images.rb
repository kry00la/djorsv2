ActiveAdmin.register RecipeImage do
    menu :parent => "Manage Services"
    
    form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs "Add Image to recipe" do
    f.input :recipe
    f.input :image, :as => :file
    #f.input :image_recipe, :as => :file  ,:hint => "current image: #{f.template.image_tag(f.object.image_recipe.url(:thumb))}"
    #f.input :image, :as => :file
    end
  f.buttons
 end
 
  controller do
   def new
     @recipe_image = RecipeImage.new
   end
   
   def create
      @recipe_image = RecipeImage.new(params[:recipe_image])
      @recipe_image.save
   end
 end
end
