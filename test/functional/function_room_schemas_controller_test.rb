require 'test_helper'

class FunctionRoomSchemasControllerTest < ActionController::TestCase
  setup do
    @function_room_schema = function_room_schemas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:function_room_schemas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create function_room_schema" do
    assert_difference('FunctionRoomSchema.count') do
      post :create, function_room_schema: @function_room_schema.attributes
    end

    assert_redirected_to function_room_schema_path(assigns(:function_room_schema))
  end

  test "should show function_room_schema" do
    get :show, id: @function_room_schema
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @function_room_schema
    assert_response :success
  end

  test "should update function_room_schema" do
    put :update, id: @function_room_schema, function_room_schema: @function_room_schema.attributes
    assert_redirected_to function_room_schema_path(assigns(:function_room_schema))
  end

  test "should destroy function_room_schema" do
    assert_difference('FunctionRoomSchema.count', -1) do
      delete :destroy, id: @function_room_schema
    end

    assert_redirected_to function_room_schemas_path
  end
end
