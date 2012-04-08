require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get functionroom" do
    get :functionroom
    assert_response :success
  end

end
