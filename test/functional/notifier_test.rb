require 'test_helper'

class NotifierTest < ActionMailer::TestCase
  test "reservation_received" do
    mail = Notifier.reservation_received
    assert_equal "Reservation received", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "reservation_approved" do
    mail = Notifier.reservation_approved
    assert_equal "Reservation approved", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
