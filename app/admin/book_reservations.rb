ActiveAdmin.register BookReservation do
   menu :parent => "Tickets" ,:label => "Book Reservation Tickets"
     actions :all, :except => [:edit,:destroy,:new]    
       filter :reservation
       filter :card_type
       
       
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
      row("Reservation Edit") { link_to "Edit Details",reservation_path(@reservation)}
    end
  end
  
  
      ###########reports###########           
    csv do
      column("Id") { |name| reservation.id }
      column("Name") { |name| reservation.name }
      column("Service") { |service| reservation.service.name }
      column("adress") { |address| reservation.address }
      column("date") { |date| reservation.date }
      column("Time Start") { |timestart| reservation.timeStart.strftime('%l:%M - %P') }
      column("timeEnd") { |timeend| reservation.timeEnd.strftime('%l:%M - %P') }
      column("Number of Guest") { |numGuest| reservation.numGuest }
    end
    
  
end
