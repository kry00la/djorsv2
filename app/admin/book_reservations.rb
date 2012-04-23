ActiveAdmin.register BookReservation do
   menu :parent => "Tickets" ,:label => "Book Reservation Tickets"
     actions :all, :except => [:edit,:destroy,:new]
     
     
       filter :reservation
       filter :card_type
     
     index do 
    column "Guest" , :reservation
    column "Card First Name", :first_name
    column "Card Last Name", :last_name
    column "Card Type", :card_type
    column "Card Expiration",:card_expires_on
    end
end
