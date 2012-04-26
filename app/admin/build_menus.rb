ActiveAdmin.register BuildMenu do
  # menu :parent => "Group Manager" ,:label => "Recipe for menu"
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
          @menu = Menu.find(params[:build_menu][:menu_id])
          recipe = Recipe.find(params[:build_menu][:recipe_id])
         # @menu_recipe = @menu.add_recipe(recipe.id)
           @build_menu = @menu.add_recipe(recipe.id)
           if @build_menu.save
            redirect_to {admin_menu_recipe_url}
          end
       end
      
      def destroy
        @build_menu = BuildMenu.find(params[:id])
        @build_menu
        #.remove_recipe
          if @build_menu.destroy
             redirect_to :action => :index, :notice => "This is a test notice!"
          end
      end     

    end
end
