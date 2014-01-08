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
      post :create, arbeitspaket: { arbeitspaketbeginn: @arbeitspaket.arbeitspaketbeginn, arbeitspaketbeschreibung: @arbeitspaket.arbeitspaketbeschreibung, arbeitspaketdauer: @arbeitspaket.arbeitspaketdauer, arbeitspaketende: @arbeitspaket.arbeitspaketende, arbeitspaketkuerzel: @arbeitspaket.arbeitspaketkuerzel, arbeitspaketname: @arbeitspaket.arbeitspaketname, arbeitspaketnr: @arbeitspaket.arbeitspaketnr, arbeitspaketverantwortlicher: @arbeitspaket.arbeitspaketverantwortlicher, aufgabeid: @arbeitspaket.aufgabeid, ausgangsdokumente: @arbeitspaket.ausgangsdokumente, eingangsdokumente: @arbeitspaket.eingangsdokumente, verantwortlichkeitenid: @arbeitspaket.verantwortlichkeitenid }
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
    patch :update, id: @arbeitspaket, arbeitspaket: { arbeitspaketbeginn: @arbeitspaket.arbeitspaketbeginn, arbeitspaketbeschreibung: @arbeitspaket.arbeitspaketbeschreibung, arbeitspaketdauer: @arbeitspaket.arbeitspaketdauer, arbeitspaketende: @arbeitspaket.arbeitspaketende, arbeitspaketkuerzel: @arbeitspaket.arbeitspaketkuerzel, arbeitspaketname: @arbeitspaket.arbeitspaketname, arbeitspaketnr: @arbeitspaket.arbeitspaketnr, arbeitspaketverantwortlicher: @arbeitspaket.arbeitspaketverantwortlicher, aufgabeid: @arbeitspaket.aufgabeid, ausgangsdokumente: @arbeitspaket.ausgangsdokumente, eingangsdokumente: @arbeitspaket.eingangsdokumente, verantwortlichkeitenid: @arbeitspaket.verantwortlichkeitenid }
    assert_redirected_to arbeitspaket_path(assigns(:arbeitspaket))
  end

  test "should destroy arbeitspaket" do
    assert_difference('Arbeitspaket.count', -1) do
      delete :destroy, id: @arbeitspaket
    end

    assert_redirected_to arbeitspakets_path
  end
end
