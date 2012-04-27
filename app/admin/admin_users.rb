ActiveAdmin.register AdminUser do
   after_create { |admin| admin.send_reset_password_instructions }
  menu :label => "Create User" ,:parent => "Utilities"
  
  filter :email
  
  def password_required?
    new_record? ? false : super
  end
   
   
   
   index do
    column :email
    column :current_sign_in_at
    column :last_sign_in_at
    column :sign_in_count
    default_actions
  end
  
  form do |f|
    f.inputs "Admin Details" do
      f.input :email
    end
    f.buttons
  end
end
