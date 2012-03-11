require 'test_helper'

class RecipeCategoriesControllerTest < ActionController::TestCase
  setup do
    @recipe_category = recipe_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:recipe_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create recipe_category" do
    assert_difference('RecipeCategory.count') do
      post :create, recipe_category: @recipe_category.attributes
    end

    assert_redirected_to recipe_category_path(assigns(:recipe_category))
  end

  test "should show recipe_category" do
    get :show, id: @recipe_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @recipe_category
    assert_response :success
  end

  test "should update recipe_category" do
    put :update, id: @recipe_category, recipe_category: @recipe_category.attributes
    assert_redirected_to recipe_category_path(assigns(:recipe_category))
  end

  test "should destroy recipe_category" do
    assert_difference('RecipeCategory.count', -1) do
      delete :destroy, id: @recipe_category
    end

    assert_redirected_to recipe_categories_path
  end
end
