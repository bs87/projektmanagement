require 'test_helper'

class ProduktkategoriesControllerTest < ActionController::TestCase
  setup do
    @produktkategory = produktkategories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:produktkategories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create produktkategory" do
    assert_difference('Produktkategorie.count') do
      post :create, produktkategory: { name: @produktkategory.name, projekt_id: @produktkategory.projekt_id, vorgaenger_id: @produktkategory.vorgaenger_id }
    end

    assert_redirected_to produktkategory_path(assigns(:produktkategory))
  end

  test "should show produktkategory" do
    get :show, id: @produktkategory
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @produktkategory
    assert_response :success
  end

  test "should update produktkategory" do
    patch :update, id: @produktkategory, produktkategory: { name: @produktkategory.name, projekt_id: @produktkategory.projekt_id, vorgaenger_id: @produktkategory.vorgaenger_id }
    assert_redirected_to produktkategory_path(assigns(:produktkategory))
  end

  test "should destroy produktkategory" do
    assert_difference('Produktkategorie.count', -1) do
      delete :destroy, id: @produktkategory
    end

    assert_redirected_to produktkategories_path
  end
end
