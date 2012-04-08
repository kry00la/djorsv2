require 'test_helper'

class MenuAddonsLineItemsControllerTest < ActionController::TestCase
  setup do
    @menu_addons_line_item = menu_addons_line_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:menu_addons_line_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create menu_addons_line_item" do
    assert_difference('MenuAddonsLineItem.count') do
      post :create, menu_addons_line_item: @menu_addons_line_item.attributes
    end

    assert_redirected_to menu_addons_line_item_path(assigns(:menu_addons_line_item))
  end

  test "should show menu_addons_line_item" do
    get :show, id: @menu_addons_line_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @menu_addons_line_item
    assert_response :success
  end

  test "should update menu_addons_line_item" do
    put :update, id: @menu_addons_line_item, menu_addons_line_item: @menu_addons_line_item.attributes
    assert_redirected_to menu_addons_line_item_path(assigns(:menu_addons_line_item))
  end

  test "should destroy menu_addons_line_item" do
    assert_difference('MenuAddonsLineItem.count', -1) do
      delete :destroy, id: @menu_addons_line_item
    end

    assert_redirected_to menu_addons_line_items_path
  end
end
