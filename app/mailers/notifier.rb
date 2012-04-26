class Notifier < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.reservation_received.subject
  #
  def reservation_received(reservation)
    #@greeting = "Hi"
    @reservation = reservation
    mail :to => reservation.email ,:subject => 'Doh - Joe event place requirements'
    #mail to: "to@example.org"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.reservation_approved.subject
  #
  def reservation_approved(reservation)
    @reservation = reservation
    @url = "doejoe-place.herokuapp.com"
    mail :to => reservation.email ,:subject => 'Doh-Joe reservation approval'
  end
end
