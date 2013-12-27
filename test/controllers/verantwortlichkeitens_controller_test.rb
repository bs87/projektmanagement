require 'test_helper'

class VerantwortlichkeitensControllerTest < ActionController::TestCase
  setup do
    @verantwortlichkeiten = verantwortlichkeitens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:verantwortlichkeitens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create verantwortlichkeiten" do
    assert_difference('Verantwortlichkeiten.count') do
      post :create, verantwortlichkeiten: { ArbeitspaketID: @verantwortlichkeiten.ArbeitspaketID, Beschreibung: @verantwortlichkeiten.Beschreibung, Intensitaet: @verantwortlichkeiten.Intensitaet, RessourceID: @verantwortlichkeiten.RessourceID, Ressourcen_RessourcenID: @verantwortlichkeiten.Ressourcen_RessourcenID }
    end

    assert_redirected_to verantwortlichkeiten_path(assigns(:verantwortlichkeiten))
  end

  test "should show verantwortlichkeiten" do
    get :show, id: @verantwortlichkeiten
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @verantwortlichkeiten
    assert_response :success
  end

  test "should update verantwortlichkeiten" do
    patch :update, id: @verantwortlichkeiten, verantwortlichkeiten: { ArbeitspaketID: @verantwortlichkeiten.ArbeitspaketID, Beschreibung: @verantwortlichkeiten.Beschreibung, Intensitaet: @verantwortlichkeiten.Intensitaet, RessourceID: @verantwortlichkeiten.RessourceID, Ressourcen_RessourcenID: @verantwortlichkeiten.Ressourcen_RessourcenID }
    assert_redirected_to verantwortlichkeiten_path(assigns(:verantwortlichkeiten))
  end

  test "should destroy verantwortlichkeiten" do
    assert_difference('Verantwortlichkeiten.count', -1) do
      delete :destroy, id: @verantwortlichkeiten
    end

    assert_redirected_to verantwortlichkeitens_path
  end
end
