require 'test_helper'

class ContentIntroUsControllerTest < ActionController::TestCase
  setup do
    @content_intro_u = content_intro_us(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:content_intro_us)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create content_intro_u" do
    assert_difference('ContentIntroU.count') do
      post :create, content_intro_u: @content_intro_u.attributes
    end

    assert_redirected_to content_intro_u_path(assigns(:content_intro_u))
  end

  test "should show content_intro_u" do
    get :show, id: @content_intro_u
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @content_intro_u
    assert_response :success
  end

  test "should update content_intro_u" do
    put :update, id: @content_intro_u, content_intro_u: @content_intro_u.attributes
    assert_redirected_to content_intro_u_path(assigns(:content_intro_u))
  end

  test "should destroy content_intro_u" do
    assert_difference('ContentIntroU.count', -1) do
      delete :destroy, id: @content_intro_u
    end

    assert_redirected_to content_intro_us_path
  end
end
