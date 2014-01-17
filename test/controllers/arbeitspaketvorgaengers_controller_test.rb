require 'test_helper'

class ArbeitspaketvorgaengersControllerTest < ActionController::TestCase
  setup do
    @arbeitspaketvorgaenger = arbeitspaketvorgaengers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:arbeitspaketvorgaengers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create arbeitspaketvorgaenger" do
    assert_difference('Arbeitspaketvorgaenger.count') do
      post :create, arbeitspaketvorgaenger: { apid: @arbeitspaketvorgaenger.apid, apvorgaengerid: @arbeitspaketvorgaenger.apvorgaengerid }
    end

    assert_redirected_to arbeitspaketvorgaenger_path(assigns(:arbeitspaketvorgaenger))
  end

  test "should show arbeitspaketvorgaenger" do
    get :show, id: @arbeitspaketvorgaenger
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @arbeitspaketvorgaenger
    assert_response :success
  end

  test "should update arbeitspaketvorgaenger" do
    patch :update, id: @arbeitspaketvorgaenger, arbeitspaketvorgaenger: { apid: @arbeitspaketvorgaenger.apid, apvorgaengerid: @arbeitspaketvorgaenger.apvorgaengerid }
    assert_redirected_to arbeitspaketvorgaenger_path(assigns(:arbeitspaketvorgaenger))
  end

  test "should destroy arbeitspaketvorgaenger" do
    assert_difference('Arbeitspaketvorgaenger.count', -1) do
      delete :destroy, id: @arbeitspaketvorgaenger
    end

    assert_redirected_to arbeitspaketvorgaengers_path
  end
end
