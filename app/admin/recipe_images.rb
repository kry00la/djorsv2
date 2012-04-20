ActiveAdmin.register RecipeImage do
    menu :parent => "Image Manager", :label => "Recipe Image Manager"
    filter :recipe
   
     
  index do 
    column :recipe
    column :image
  default_actions
  end
  
   
   
    form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs "Add Image to recipe" do
    f.input :recipe
    f.input :image, :as => :file, :hint => f.template.image_tag(f.object.image.url(:thumb))
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
      if @recipe_image.save
        redirect_to admin_recipe_image_path(@recipe_image), :notice => "image succesfully added"
      end
      
   end
 end
end
