class MenuRecipesController < InheritedResources::Base

def new 
	@menu = Menu.find(params[:menu_id])
	@menu_recipe = @menu.menu_recipes.build
end

def create
	@menu = Menu.find(params[:menu_id])
    @menu_recipe = @menu.menu_recipes.build(params[:menu_recipe])

    if @menu_recipe.save
    	redirect_to @menu
    end

end

end
