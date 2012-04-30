require 'test_helper'

class ContentMiniIntroUsControllerTest < ActionController::TestCase
  setup do
    @content_mini_intro_u = content_mini_intro_us(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:content_mini_intro_us)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create content_mini_intro_u" do
    assert_difference('ContentMiniIntroU.count') do
      post :create, content_mini_intro_u: @content_mini_intro_u.attributes
    end

    assert_redirected_to content_mini_intro_u_path(assigns(:content_mini_intro_u))
  end

  test "should show content_mini_intro_u" do
    get :show, id: @content_mini_intro_u
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @content_mini_intro_u
    assert_response :success
  end

  test "should update content_mini_intro_u" do
    put :update, id: @content_mini_intro_u, content_mini_intro_u: @content_mini_intro_u.attributes
    assert_redirected_to content_mini_intro_u_path(assigns(:content_mini_intro_u))
  end

  test "should destroy content_mini_intro_u" do
    assert_difference('ContentMiniIntroU.count', -1) do
      delete :destroy, id: @content_mini_intro_u
    end

    assert_redirected_to content_mini_intro_us_path
  end
end
