require 'test_helper'

class RecipeImagesControllerTest < ActionController::TestCase
  setup do
    @recipe_image = recipe_images(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:recipe_images)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create recipe_image" do
    assert_difference('RecipeImage.count') do
      post :create, recipe_image: @recipe_image.attributes
    end

    assert_redirected_to recipe_image_path(assigns(:recipe_image))
  end

  test "should show recipe_image" do
    get :show, id: @recipe_image
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @recipe_image
    assert_response :success
  end

  test "should update recipe_image" do
    put :update, id: @recipe_image, recipe_image: @recipe_image.attributes
    assert_redirected_to recipe_image_path(assigns(:recipe_image))
  end

  test "should destroy recipe_image" do
    assert_difference('RecipeImage.count', -1) do
      delete :destroy, id: @recipe_image
    end

    assert_redirected_to recipe_images_path
  end
end
