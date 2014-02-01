require 'test_helper'

class AufgabensControllerTest < ActionController::TestCase
  setup do
    @aufgaben = aufgabens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:aufgabens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create aufgaben" do
    assert_difference('Aufgaben.count') do
      post :create, aufgaben: { aufgabenbeschreibung: @aufgaben.aufgabenbeschreibung, aufgabenname: @aufgaben.aufgabenname, aufgabennr: @aufgaben.aufgabennr, aufgabenrang: @aufgaben.aufgabenrang, projektsid: @aufgaben.projektsid }
    end

    assert_redirected_to aufgaben_path(assigns(:aufgaben))
  end

  test "should show aufgaben" do
    get :show, id: @aufgaben
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @aufgaben
    assert_response :success
  end

  test "should update aufgaben" do
    patch :update, id: @aufgaben, aufgaben: { aufgabenbeschreibung: @aufgaben.aufgabenbeschreibung, aufgabenname: @aufgaben.aufgabenname, aufgabennr: @aufgaben.aufgabennr, aufgabenrang: @aufgaben.aufgabenrang, projektsid: @aufgaben.projektsid }
    assert_redirected_to aufgaben_path(assigns(:aufgaben))
  end

  test "should destroy aufgaben" do
    assert_difference('Aufgaben.count', -1) do
      delete :destroy, id: @aufgaben
    end

    assert_redirected_to aufgabens_path
  end
end
