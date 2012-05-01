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
    column "Time Start", :timeStart, :sortable => false do |ts|
      ts.timeEnd.strftime('%l:%M - %P')
    end
    column "Time End",:timeEnd, :sortable => false do |te|
      te.timeEnd.strftime('%l:%M - %P')
    end
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
  
  
  
  show do
   panel "Details" do 
     attributes_table_for reservation do
       row :id
       row :name
       row :address
       row :contact
       row :date
       row :timeStart do |ts| 
         ts.timeStart.strftime('%l:%M - %P')
       end
      row :timeEnd do |te|
        te.timeEnd.strftime('%l:%M - %P')
      end
      row :created_at 
      row :service
      row :total_price
      row :booked_at  
      end
   end
   active_admin_comments
 end
  
  
    
    
    csv do
      column :id
      column :name
      column :address
      column :contact
      column :date do |d|
        d.date.strftime("%B %d,%Y")
      end
      column :timeStart do |ts|
          ts.timeStart.strftime('%l:%M - %P')
       end
      column :timeEnd do |time| 
        time.timeEnd.strftime('%l:%M - %P')
      end
      column :numGuest
      column :service do |s|
        s.service.name
      end
    
    
     
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
