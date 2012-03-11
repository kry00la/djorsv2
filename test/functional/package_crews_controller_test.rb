require 'test_helper'

class PackageCrewsControllerTest < ActionController::TestCase
  setup do
    @package_crew = package_crews(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:package_crews)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create package_crew" do
    assert_difference('PackageCrew.count') do
      post :create, package_crew: @package_crew.attributes
    end

    assert_redirected_to package_crew_path(assigns(:package_crew))
  end

  test "should show package_crew" do
    get :show, id: @package_crew
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @package_crew
    assert_response :success
  end

  test "should update package_crew" do
    put :update, id: @package_crew, package_crew: @package_crew.attributes
    assert_redirected_to package_crew_path(assigns(:package_crew))
  end

  test "should destroy package_crew" do
    assert_difference('PackageCrew.count', -1) do
      delete :destroy, id: @package_crew
    end

    assert_redirected_to package_crews_path
  end
end
