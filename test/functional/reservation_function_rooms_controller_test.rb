require 'test_helper'

class ReservationFunctionRoomsControllerTest < ActionController::TestCase
  setup do
    @reservation_function_room = reservation_function_rooms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reservation_function_rooms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reservation_function_room" do
    assert_difference('ReservationFunctionRoom.count') do
      post :create, reservation_function_room: @reservation_function_room.attributes
    end

    assert_redirected_to reservation_function_room_path(assigns(:reservation_function_room))
  end

  test "should show reservation_function_room" do
    get :show, id: @reservation_function_room
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reservation_function_room
    assert_response :success
  end

  test "should update reservation_function_room" do
    put :update, id: @reservation_function_room, reservation_function_room: @reservation_function_room.attributes
    assert_redirected_to reservation_function_room_path(assigns(:reservation_function_room))
  end

  test "should destroy reservation_function_room" do
    assert_difference('ReservationFunctionRoom.count', -1) do
      delete :destroy, id: @reservation_function_room
    end

    assert_redirected_to reservation_function_rooms_path
  end
end
