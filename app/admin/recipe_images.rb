ActiveAdmin.register RecipeImage do
    menu :parent => "Image Manager", :label => "Recipe Image Manager"
    filter :recipe
   
   ############  
  index do 

    column " ",:image do |recipe|
        image_tag(recipe.image.url(:cute))
    end
        column :recipe
  default_actions
  end
  ############
   
   
    form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs "Add Image to recipe" do
    f.input :recipe
    f.input :image, :as => :file, :hint => f.template.image_tag(f.object.image.url(:thumb)),:hint => "not less than 300x300 image size"
    #f.input :image_recipe, :as => :file  ,:hint => "current image: #{f.template.image_tag(f.object.image_recipe.url(:thumb))}"
    #f.input :image, :as => :file
    end
  f.buttons
 end
 
 
 
 
 ###################
 show do
   panel "Details" do 
     attributes_table_for recipe_image do
       row :recipe
       row :created_at
     end
   end
   active_admin_comments
 end
 
 sidebar :recipe_image ,:only => :show do
   attributes_table_for recipe_image do
     row :image do 
       image_tag(recipe_image.image.url(:prev))
     end
   end
 end
 
 
 
 ###############
  controller do
    before_filter :only => :index do
              @per_page = 10
    end
    
    

   
   def create
      @recipe_image = RecipeImage.new(params[:recipe_image])
      if @recipe_image.save
        redirect_to admin_recipe_image_path(@recipe_image), :notice => "image succesfully added"
      end
      
   end
 end
end
