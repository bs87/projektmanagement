require 'test_helper'

class ProduktsControllerTest < ActionController::TestCase
  setup do
    @produkt = produkts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:produkts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create produkt" do
    assert_difference('Produkt.count') do
      post :create, produkt: { ap_id: @produkt.ap_id, kat_id: @produkt.kat_id, name: @produkt.name, typ: @produkt.typ }
    end

    assert_redirected_to produkt_path(assigns(:produkt))
  end

  test "should show produkt" do
    get :show, id: @produkt
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @produkt
    assert_response :success
  end

  test "should update produkt" do
    patch :update, id: @produkt, produkt: { ap_id: @produkt.ap_id, kat_id: @produkt.kat_id, name: @produkt.name, typ: @produkt.typ }
    assert_redirected_to produkt_path(assigns(:produkt))
  end

  test "should destroy produkt" do
    assert_difference('Produkt.count', -1) do
      delete :destroy, id: @produkt
    end

    assert_redirected_to produkts_path
  end
end
