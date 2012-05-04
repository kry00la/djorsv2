ActiveAdmin.register ContentIntroU do
   menu :label => "Page introduction" ,:parent => "Utilities"
      actions :all, :except => [:destroy]
      index do 
    column :title, :sortable => false
  
   
  default_actions
  end
end
