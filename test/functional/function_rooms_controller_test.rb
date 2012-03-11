require 'test_helper'

class FunctionRoomsControllerTest < ActionController::TestCase
  setup do
    @function_room = function_rooms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:function_rooms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create function_room" do
    assert_difference('FunctionRoom.count') do
      post :create, function_room: @function_room.attributes
    end

    assert_redirected_to function_room_path(assigns(:function_room))
  end

  test "should show function_room" do
    get :show, id: @function_room
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @function_room
    assert_response :success
  end

  test "should update function_room" do
    put :update, id: @function_room, function_room: @function_room.attributes
    assert_redirected_to function_room_path(assigns(:function_room))
  end

  test "should destroy function_room" do
    assert_difference('FunctionRoom.count', -1) do
      delete :destroy, id: @function_room
    end

    assert_redirected_to function_rooms_path
  end
end
