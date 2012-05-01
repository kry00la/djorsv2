ActiveAdmin.register BookReservation do
   menu :parent => "Tickets" ,:label => "Book Reservation Tickets"
     actions :all, :except => [:edit,:destroy,:new]    
       filter :reservation 
       filter :card_type
       
       
               
#                
#                
# 
#     
#     
#     

          








            show do
            panel "Packages" do
              attributes_table_for reservation.reservation_package do
                row :package
                row :package do |p|
                  p.package.price
                end
              end
              
              
              panel "menus" do
                     table_for(reservation.package_line_items) do |t|
                       t.column ("Menu Name") { |menu| auto_link menu.menu}
                     end
                   end
              
              
               panel "Crew" do
                  table_for(reservation.reservation_crews) do |t|
                    t.column ("Crew Name") {|crew| auto_link crew.crew}
                    t.column ("Quantity") {|crew| crew.quantity}
                    t.column ("price ") {|crew| crew.price}
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
             

#  
   sidebar :guest_details, :only => :show do
     attributes_table_for reservation do
       row :id
       row("name") { auto_link reservation.name }
       row("Date") {reservation.date}
       row("Number of Guest") {reservation.numGuest}
      
       row :email
       row :contact
       row :total_price
       row("Update Reservation") { link_to "Edit Details",reservation_path(@reservation)}
     end
   end
   
   sidebar :booking_information, :only => :show do
     attributes_table_for book_reservation do
       row :id 
       row :ip_address 
       row :card_type
       row :first_name
       row :last_name
       row :card_expires_on
       row :created_at 
     end
   end
#   
 # attributes_table_for resource do
       # row :id ,:label => "Book number"
       # row :ip_address 
       # row :card_type
       # row :first_name
       # row :last_name
       # row :card_exipres_on
       # row :created_at,:label => "booked date"
     # end
#   
      # ###########reports###########           
    # csv do
      # column("Id") { |name| reservation.id }
      # column("Name") { |name| reservation.name }
      # column("Service") { |service| reservation.service.name }
      # column("adress") { |address| reservation.address }
      # column("date") { |date| reservation.date }
      # column("Time Start") { |timestart| reservation.timeStart.strftime('%l:%M - %P') }
      # column("timeEnd") { |timeend| reservation.timeEnd.strftime('%l:%M - %P') }
      # column("Number of Guest") { |numGuest| reservation.numGuest }
    # end
    
  controller do
          before_filter :only => :index do
              @per_page = 10
             end
  end
end
