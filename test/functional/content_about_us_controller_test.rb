require 'test_helper'

class ContentAboutUsControllerTest < ActionController::TestCase
  setup do
    @content_about_u = content_about_us(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:content_about_us)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create content_about_u" do
    assert_difference('ContentAboutU.count') do
      post :create, content_about_u: @content_about_u.attributes
    end

    assert_redirected_to content_about_u_path(assigns(:content_about_u))
  end

  test "should show content_about_u" do
    get :show, id: @content_about_u
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @content_about_u
    assert_response :success
  end

  test "should update content_about_u" do
    put :update, id: @content_about_u, content_about_u: @content_about_u.attributes
    assert_redirected_to content_about_u_path(assigns(:content_about_u))
  end

  test "should destroy content_about_u" do
    assert_difference('ContentAboutU.count', -1) do
      delete :destroy, id: @content_about_u
    end

    assert_redirected_to content_about_us_path
  end
end
