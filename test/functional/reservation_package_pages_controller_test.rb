require 'test_helper'

class ReservationPackagePagesControllerTest < ActionController::TestCase
  test "should get menulist" do
    get :menulist
    assert_response :success
  end

end
