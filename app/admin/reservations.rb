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
    column "Time Start", :timeStart# do |x|
      # x.timeStart.to_s(:long)
    #end
    column "Time End",:timeEnd
    column "Number of guest", :numGuest
    default_actions
  end
  
  form :html => { :enctype => "multipart/form-data" } do |f|
   f.inputs "Reservation Information" do
    f.input :service
    f.input :name
    f.input :address
    f.input :contact, :as => :string
    f.input :date
    #time issue#
    f.input :timeStart,:label => "Time Start"
    f.input :timeEnd ,:label => "Time End"
    ##
    f.input :numGuest, :as => :string
    f.input :email
    end
  f.buttons
 end
 
 show do
   panel "Package" do
     attributes_table_for reservation.reservation_package do
        row("Package Name") { reservation.reservation_package.package.name }
        row("price") { reservation.reservation_package.price }
     end
   
     panel "menus" do
       table_for(reservation.package_line_items) do |t|
         t.column ("Menu Name") { |menu| auto_link menu.menu}
         t.column ("Price") {|menu| menu.price}
       end
     end
   panel "Crew" do
    table_for(reservation.reservation_crews) do |t|
      t.column ("Crew Name") {|crew| auto_link crew.crew}
      t.column ("Quantity") {|crew| crew.quantity}
      t.column ("total") {|crew| crew.price}
    end
    end
    
    panel "Recipe Addons" do
    table_for(reservation.menu_addons_line_items) do |t|
      t.column ("Recipe Name") {|addon| auto_link addon.recipe}
      t.column ("Price") {|addon| addon.price}
    end
   end
   end
   panel "Function Room" do
     table_for(reservation.reservation_function_rooms) do |t|
       t.column ("function room") { |function_room| auto_link function_room.function_room}
       t.column ("Price") { |function_room| auto_link function_room.function_room.price}
     end
    end
    active_admin_comments
 end
 
 sidebar :customer_information, :only => :show do
    attributes_table_for reservation do
      row("name") { auto_link reservation.name }
      row("Date") {reservation.date}
      row("Number of Guest") {reservation.numGuest}
      row("time Start") { reservation.timeStart}
      row("time End") { reservation.timeEnd}
      row :email
      row :contact
      row :total_price
    end
  end
 
 
 controller do
   def destory
                      @reservation = Reservation.find(params[:id])
                      destroy_reservation_session
                      
                      if @reservation.destroy
                       redirect_to :action => :index, :notice => "This is a test notice!"
                      end
   end
 end
 
end
