require 'test_helper'

class RessourcefunctionsControllerTest < ActionController::TestCase
  setup do
    @ressourcefunction = ressourcefunctions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ressourcefunctions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ressourcefunction" do
    assert_difference('Ressourcefunction.count') do
      post :create, ressourcefunction: { name: @ressourcefunction.name }
    end

    assert_redirected_to ressourcefunction_path(assigns(:ressourcefunction))
  end

  test "should show ressourcefunction" do
    get :show, id: @ressourcefunction
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ressourcefunction
    assert_response :success
  end

  test "should update ressourcefunction" do
    patch :update, id: @ressourcefunction, ressourcefunction: { name: @ressourcefunction.name }
    assert_redirected_to ressourcefunction_path(assigns(:ressourcefunction))
  end

  test "should destroy ressourcefunction" do
    assert_difference('Ressourcefunction.count', -1) do
      delete :destroy, id: @ressourcefunction
    end

    assert_redirected_to ressourcefunctions_path
  end
end
