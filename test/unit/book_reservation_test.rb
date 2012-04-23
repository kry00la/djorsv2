require 'test_helper'

class BookReservationTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert BookReservation.new.valid?
  end
end
