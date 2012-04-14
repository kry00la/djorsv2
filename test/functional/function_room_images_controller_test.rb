require 'test_helper'

class FunctionRoomImagesControllerTest < ActionController::TestCase
  setup do
    @function_room_image = function_room_images(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:function_room_images)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create function_room_image" do
    assert_difference('FunctionRoomImage.count') do
      post :create, function_room_image: @function_room_image.attributes
    end

    assert_redirected_to function_room_image_path(assigns(:function_room_image))
  end

  test "should show function_room_image" do
    get :show, id: @function_room_image
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @function_room_image
    assert_response :success
  end

  test "should update function_room_image" do
    put :update, id: @function_room_image, function_room_image: @function_room_image.attributes
    assert_redirected_to function_room_image_path(assigns(:function_room_image))
  end

  test "should destroy function_room_image" do
    assert_difference('FunctionRoomImage.count', -1) do
      delete :destroy, id: @function_room_image
    end

    assert_redirected_to function_room_images_path
  end
end
