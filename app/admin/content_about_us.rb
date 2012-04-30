ActiveAdmin.register ContentAboutU do
   menu :label => "Page About Us" ,:parent => "Utilities"
     actions :all, :except => [:new,:create,:destroy]
   
   index do 
    column :title, :sortable => false
  
   
  default_actions
  end
end
