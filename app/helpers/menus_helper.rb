module MenusHelper
=begin
  def display_recipe(menu)
    unless menu.menu_recipes.nil?
      render 'recipe', :menu => @menu
    else
      render 'no_recipe', :menu => @menu
    end
  end
=end

end
