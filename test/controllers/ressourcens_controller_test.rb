require 'test_helper'

class RessourcensControllerTest < ActionController::TestCase
  setup do
    @ressourcen = ressourcens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ressourcens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ressourcen" do
    assert_difference('Ressourcen.count') do
      post :create, ressourcen: { Ressourceart: @ressourcen.Ressourceart, Ressourcebeschreibung: @ressourcen.Ressourcebeschreibung, Ressourcegenerisch: @ressourcen.Ressourcegenerisch, Ressourcekuerzel: @ressourcen.Ressourcekuerzel, Ressourcemax: @ressourcen.Ressourcemax, Ressourcename: @ressourcen.Ressourcename }
    end

    assert_redirected_to ressourcen_path(assigns(:ressourcen))
  end

  test "should show ressourcen" do
    get :show, id: @ressourcen
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ressourcen
    assert_response :success
  end

  test "should update ressourcen" do
    patch :update, id: @ressourcen, ressourcen: { Ressourceart: @ressourcen.Ressourceart, Ressourcebeschreibung: @ressourcen.Ressourcebeschreibung, Ressourcegenerisch: @ressourcen.Ressourcegenerisch, Ressourcekuerzel: @ressourcen.Ressourcekuerzel, Ressourcemax: @ressourcen.Ressourcemax, Ressourcename: @ressourcen.Ressourcename }
    assert_redirected_to ressourcen_path(assigns(:ressourcen))
  end

  test "should destroy ressourcen" do
    assert_difference('Ressourcen.count', -1) do
      delete :destroy, id: @ressourcen
    end

    assert_redirected_to ressourcens_path
  end
end
