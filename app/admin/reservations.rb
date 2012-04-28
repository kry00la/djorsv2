ActiveAdmin.register Reservation do
  
  menu :parent => "Tickets" ,:label => "Reservation Tickets"
  filter :name,:as => :string
  filter :date
  filter :email
  
 
  index do 
    column "Reservation Number",:id, :sortable => false
    column "Guest Name", :name, :sortable => false
    column "Service Type", :service, :sortable => false
    column "Booked Date", :date, :sortable => false
    column "Time Start", :timeStart, :sortable => false
    column "Time End",:timeEnd, :sortable => false
    column "Number of guest", :numGuest, :sortable => false
    column "Last update", :updated_at, :sortable => false
    column "Created", :created_at, :sortable => false
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
      column("Time Start") { |timestart| reservation.timeStart.strftime('%l:%M - %P') }
      column("timeEnd") { |timeend| reservation.timeEnd.strftime('%l:%M - %P') }
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
    f.input :timeStart ,:label => "Time Start", :twelve_hour => true 
    f.input :timeEnd ,:label => "Time End" , :twelve_hour => true 
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
                     
                     before_filter :only => :index do
                       @per_page = 10
                     end
              end
              
              
 
end
