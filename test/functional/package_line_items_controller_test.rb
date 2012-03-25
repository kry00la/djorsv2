require 'test_helper'

class PackageLineItemsControllerTest < ActionController::TestCase
  setup do
    @package_line_item = package_line_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:package_line_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create package_line_item" do
    assert_difference('PackageLineItem.count') do
      post :create, package_line_item: @package_line_item.attributes
    end

    assert_redirected_to package_line_item_path(assigns(:package_line_item))
  end

  test "should show package_line_item" do
    get :show, id: @package_line_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @package_line_item
    assert_response :success
  end

  test "should update package_line_item" do
    put :update, id: @package_line_item, package_line_item: @package_line_item.attributes
    assert_redirected_to package_line_item_path(assigns(:package_line_item))
  end

  test "should destroy package_line_item" do
    assert_difference('PackageLineItem.count', -1) do
      delete :destroy, id: @package_line_item
    end

    assert_redirected_to package_line_items_path
  end
end
