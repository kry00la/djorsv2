ActiveAdmin.register Reservation do
  menu :priority => 1
  filter :name
  filter :date
  filter :email
  
  index do 
    column :id
    column "Guest Name", :name
    column "Service Type", :service
    column "Booked Date", :date
    column "Time Start", :timeStart
    column "Time End",:timeEnd
    column "Number of guest", :numGuest
    default_actions
  end
  
  form :html => { :enctype => "multipart/form-data" } do |f|
   f.inputs "Details" do
    f.input :service
    f.input :name
    f.input :address
    f.input :contact, :as => :string
    f.input :date
    f.input :timeStart,:label => "Time Start"
    f.input :timeEnd ,:label => "Time End"
    f.input :numGuest, :as => :string
    f.input :email
    end
  f.buttons
 end
end
