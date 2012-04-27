ActiveAdmin.register Reservation do
  
  menu :parent => "Tickets" ,:label => "Reservation Tickets"
  filter :name
  filter :date
  filter :email
  
 
  index do 
    column "Reservation Number",:id
    column "Guest Name", :name
    column "Service Type", :service
    column "Booked Date", :date
    column "Time Start", :time_start
    column "Time End",:time_end
    column "Number of guest", :numGuest
    column "Last update", :updated_at
    column "Created", :created_at
    default_actions
    
  
  end
  
    
     action_item :only => :show ,:method => :get do 
      link_to('Send Confirmation', confirm_admin_reservation_path(@reservation)) 
     end 
     
  member_action :confirm, :method => :get do
    @reservation = Reservation.find(params[:id])
    if Notifier.reservation_approved(@reservation).deliver
     redirect_to admin_reservations_url, :notice => "Confirmation Sent!!"
      else
      redirect_to admin_reservations_url, :notice => "Fail to send" 
     end
     
  end
  
    
    
    csv do
      column :id
      column("Name") { |name| reservation.name }
      column("Service") { |service| reservation.service.name }
      column("adress") { |address| reservation.address }
      column("date") { |date| reservation.date }
      column("contact") { |contact| reservation.contact }
      column("Time Start") { |timestart| reservation.time_start.strftime('%l:%M - %P') }
      column("timeEnd") { |timeend| reservation.time_end.strftime('%l:%M - %P') }
      column("Number of Guest") { |numGuest| reservation.numGuest }
    end
  
  sidebar :customer_information, :only => :show do
    attributes_table_for reservation do
      row("Reservation Edit") { link_to "Edit Details",reservation_path(@reservation)}
    end
  end
  form :html => { :enctype => "multipart/form-data" } do |f|
   f.inputs "Reservation Information" do
    f.input :service
    f.input :name
    f.input :address
    f.input :contact, :as => :string
    f.input :date, :as => :date, :hint => 'Select a date',
         :prompt => {:day => "Day", :month => "Month", :year => "Year"},
         :start_year => Time.now.year
    #time issue#
    f.input :time_start ,:label => "Time Start", :twelve_hour => true 
    f.input :time_end ,:label => "Time End" , :twelve_hour => true 
    ##
    f.input :numGuest, :as => :string
    f.input :email
    end
  f.buttons
 end
 

 

              controller do
                    def destroy
                      @reservation = Reservation.find(params[:id])
                     
                      
                      if @reservation.destroy
                       destroy_reservation_session
                       redirect_to :action => :index, :notice => "Reservation Deleted!"
                      end
                     end
              end
 
end
