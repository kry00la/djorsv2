ActiveAdmin.register MenuRecipe do
    menu :parent => "Group Manager"
    actions :all, :except => [:edit]
    filter :recipe
    filter :menu

   # filter :price, :as => :numeric
  # form :partial => "menu_recipe"
    
  index do 
    column :recipe
    column :menu

  default_actions
  end
  
  
  form :html => { :enctype => "multipart/form-data" } do |f|
   f.inputs "Details" do
   f.input :menu
   f.input :recipe
  
  end
  f.buttons
 end
    
    
    controller do
      def create
          @menu = Menu.find(params[:menu_recipe][:menu_id])
          recipe = Recipe.find(params[:menu_recipe][:recipe_id])
          @menu_recipe = @menu.add_recipe(recipe.id)
          
           if @menu_recipe.save
            redirect_to {admin_menu_recipe_url}
          end
       end
      
      def destroy
        @menu_recipe = MenuRecipe.find(params[:id])
     #   @menu_recipe.remove_recipe
          if @menu_recipe.destroy
             redirect_to :action => :index, :notice => "This is a test notice!"
          end
      end     

    end
    
end
