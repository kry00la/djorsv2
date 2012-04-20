require 'test_helper'

class PackageMenusControllerTest < ActionController::TestCase
  setup do
    @package_menu = package_menus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:package_menus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create package_menu" do
    assert_difference('PackageMenu.count') do
      post :create, package_menu: @package_menu.attributes
    end

    assert_redirected_to package_menu_path(assigns(:package_menu))
  end

  test "should show package_menu" do
    get :show, id: @package_menu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @package_menu
    assert_response :success
  end

  test "should update package_menu" do
    put :update, id: @package_menu, package_menu: @package_menu.attributes
    assert_redirected_to package_menu_path(assigns(:package_menu))
  end

  test "should destroy package_menu" do
    assert_difference('PackageMenu.count', -1) do
      delete :destroy, id: @package_menu
    end

    assert_redirected_to package_menus_path
  end
end
