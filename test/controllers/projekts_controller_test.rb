require 'test_helper'

class ProjektsControllerTest < ActionController::TestCase
  setup do
    @projekt = projekts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:projekts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create projekt" do
    assert_difference('Projekt.count') do
      post :create, projekt: { Aufgaben_AufgabenID: @projekt.Aufgaben_AufgabenID, Projektbeschreibung: @projekt.Projektbeschreibung, Projektende: @projekt.Projektende, Projektleiter: @projekt.Projektleiter, Projektname: @projekt.Projektname, Projektstart: @projekt.Projektstart, Roadstops_RoadstopsID: @projekt.Roadstops_RoadstopsID }
    end

    assert_redirected_to projekt_path(assigns(:projekt))
  end

  test "should show projekt" do
    get :show, id: @projekt
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @projekt
    assert_response :success
  end

  test "should update projekt" do
    patch :update, id: @projekt, projekt: { Aufgaben_AufgabenID: @projekt.Aufgaben_AufgabenID, Projektbeschreibung: @projekt.Projektbeschreibung, Projektende: @projekt.Projektende, Projektleiter: @projekt.Projektleiter, Projektname: @projekt.Projektname, Projektstart: @projekt.Projektstart, Roadstops_RoadstopsID: @projekt.Roadstops_RoadstopsID }
    assert_redirected_to projekt_path(assigns(:projekt))
  end

  test "should destroy projekt" do
    assert_difference('Projekt.count', -1) do
      delete :destroy, id: @projekt
    end

    assert_redirected_to projekts_path
  end
end
