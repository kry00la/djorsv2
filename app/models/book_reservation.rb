class BookReservation < ActiveRecord::Base
  belongs_to :reservation
  has_many :transactions,:dependent => :destroy, :class_name => "BookTransaction"
  #attr_accessible :reservation_id, :ip_address, :first_name, :last_name, :card_type, :card_expires_on
  attr_accessor :card_number, :card_verification
  
  validate :validate_card, :on => :create

  def booked
    response = GATEWAY.purchase(price_in_cents, credit_card, reservation_option)
    #transactions.create!(:action => "Booked", :amount => price_in_cents, :response => response)
    reservation.update_attribute(:booked_at, Time.now) if response.success?
    response.success?
  end
  
  def price_in_cents
    (reservation.total_price*100).round
  end
  
   private
  
  def reservation_option
     {
      :ip => ip_address,
      :billing_address => {
        :name     => "Ryan Bates",
        :address1 => "123 Main St.",
        :city     => "New York",
        :state    => "NY",
        :country  => "US",
        :zip      => "10001"
      }
    }
  end


  def validate_card
    unless credit_card.valid?
      credit_card.errors.full_messages.each do |message|
        errors.add :base, message
      end
    end
  end
  
    def credit_card
    @credit_card ||= ActiveMerchant::Billing::CreditCard.new(
      :type               => card_type,
      :number             => card_number,
      :verification_value => card_verification,
      :month              => card_expires_on.month,
      :year               => card_expires_on.year,
      :first_name         => first_name,
      :last_name          => last_name
    )
  end
end
