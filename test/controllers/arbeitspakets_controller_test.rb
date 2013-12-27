require 'test_helper'

class ArbeitspaketsControllerTest < ActionController::TestCase
  setup do
    @arbeitspaket = arbeitspakets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:arbeitspakets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create arbeitspaket" do
    assert_difference('Arbeitspaket.count') do
      post :create, arbeitspaket: { Arbeitspaketausgangsdokumente: @arbeitspaket.Arbeitspaketausgangsdokumente, Arbeitspaketbeginn: @arbeitspaket.Arbeitspaketbeginn, Arbeitspaketbeschreibung: @arbeitspaket.Arbeitspaketbeschreibung, Arbeitspaketdauer: @arbeitspaket.Arbeitspaketdauer, Arbeitspaketeingangsdokumente: @arbeitspaket.Arbeitspaketeingangsdokumente, Arbeitspaketende: @arbeitspaket.Arbeitspaketende, Arbeitspaketname: @arbeitspaket.Arbeitspaketname, Arbeitspaketnummer: @arbeitspaket.Arbeitspaketnummer, Arbeitspaketverantwortlicher: @arbeitspaket.Arbeitspaketverantwortlicher, Arbeitspaketziel: @arbeitspaket.Arbeitspaketziel, AufgabenID: @arbeitspaket.AufgabenID, Verantwortlichkeiten_ArbeitsID: @arbeitspaket.Verantwortlichkeiten_ArbeitsID, Verantwortlichkeiten_RessourceID: @arbeitspaket.Verantwortlichkeiten_RessourceID }
    end

    assert_redirected_to arbeitspaket_path(assigns(:arbeitspaket))
  end

  test "should show arbeitspaket" do
    get :show, id: @arbeitspaket
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @arbeitspaket
    assert_response :success
  end

  test "should update arbeitspaket" do
    patch :update, id: @arbeitspaket, arbeitspaket: { Arbeitspaketausgangsdokumente: @arbeitspaket.Arbeitspaketausgangsdokumente, Arbeitspaketbeginn: @arbeitspaket.Arbeitspaketbeginn, Arbeitspaketbeschreibung: @arbeitspaket.Arbeitspaketbeschreibung, Arbeitspaketdauer: @arbeitspaket.Arbeitspaketdauer, Arbeitspaketeingangsdokumente: @arbeitspaket.Arbeitspaketeingangsdokumente, Arbeitspaketende: @arbeitspaket.Arbeitspaketende, Arbeitspaketname: @arbeitspaket.Arbeitspaketname, Arbeitspaketnummer: @arbeitspaket.Arbeitspaketnummer, Arbeitspaketverantwortlicher: @arbeitspaket.Arbeitspaketverantwortlicher, Arbeitspaketziel: @arbeitspaket.Arbeitspaketziel, AufgabenID: @arbeitspaket.AufgabenID, Verantwortlichkeiten_ArbeitsID: @arbeitspaket.Verantwortlichkeiten_ArbeitsID, Verantwortlichkeiten_RessourceID: @arbeitspaket.Verantwortlichkeiten_RessourceID }
    assert_redirected_to arbeitspaket_path(assigns(:arbeitspaket))
  end

  test "should destroy arbeitspaket" do
    assert_difference('Arbeitspaket.count', -1) do
      delete :destroy, id: @arbeitspaket
    end

    assert_redirected_to arbeitspakets_path
  end
end
