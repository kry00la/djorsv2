require 'test_helper'

class ReservationPackagesControllerTest < ActionController::TestCase
  setup do
    @reservation_package = reservation_packages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reservation_packages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reservation_package" do
    assert_difference('ReservationPackage.count') do
      post :create, reservation_package: @reservation_package.attributes
    end

    assert_redirected_to reservation_package_path(assigns(:reservation_package))
  end

  test "should show reservation_package" do
    get :show, id: @reservation_package
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reservation_package
    assert_response :success
  end

  test "should update reservation_package" do
    put :update, id: @reservation_package, reservation_package: @reservation_package.attributes
    assert_redirected_to reservation_package_path(assigns(:reservation_package))
  end

  test "should destroy reservation_package" do
    assert_difference('ReservationPackage.count', -1) do
      delete :destroy, id: @reservation_package
    end

    assert_redirected_to reservation_packages_path
  end
end
