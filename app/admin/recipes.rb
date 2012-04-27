ActiveAdmin.register Recipe do

  menu :parent => "Services"
  filter :recipe_category
  filter :name, :as => :string
  filter :price, :as => :numeric

 



 #####################################   
  index do 
    column " ",:image_recipe do |recipe|
       image_tag(recipe.image_recipe.url(:cute))
    end
    column :name
    column :recipe_category
      column :price, :sortable => :price do |function|
      div :class => "price" do
        number_to_currency function.price, :unit => "&#8369;"
      end
    end
  default_actions
  end
    
  ######################################
  form :html => { :enctype => "multipart/form-data" } do |f|
    
   f.inputs "Details" do
   # f.input :menu_type ,:label => "Recipe Type"
    f.input :recipe_category
    f.input :name
    f.input :description
    f.input :price, :as => :string

    f.input :image_recipe, :as => :file, :hint => f.template.image_tag(f.object.image_recipe.url(:thumb)),:hint => "not less than 300x300 image size"

    end
  f.buttons
 end
 #################################
        show :title => :name, :only => :show do
          panel "Details" do
             attributes_table_for recipe do
              row :id
              row :name
              row :price
              row :description
              row :created_at 
              row :recipe_category
            end
          end
           active_admin_comments
        end
        
        sidebar :Recipe_Picture, :only => :show do
         
            attributes_table_for recipe do
              row :image_recipe do
                image_tag(recipe.image_recipe.url(:prev))
              end
         end
         
        end
 
 ###############################

controller do
  before_filter :only => :index do
    @per_page = 10
  end
end
 
end
