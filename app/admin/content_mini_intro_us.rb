ActiveAdmin.register ContentMiniIntroU do
   menu :label => "small anouncement" ,:parent => "Utilities"
        actions :all, :except => [:new,:create,:destroy]
          index do 
    column :title, :sortable => false
  
   
  default_actions
  end
end
