require 'test_helper'

class ProjektesControllerTest < ActionController::TestCase
  setup do
    @projekte = projektes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:projektes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create projekte" do
    assert_difference('Projekte.count') do
      post :create, projekte: { kosten: @projekte.kosten, name: @projekte.name, projektende: @projekte.projektende, projektstart: @projekte.projektstart, status: @projekte.status }
    end

    assert_redirected_to projekte_path(assigns(:projekte))
  end

  test "should show projekte" do
    get :show, id: @projekte
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @projekte
    assert_response :success
  end

  test "should update projekte" do
    patch :update, id: @projekte, projekte: { kosten: @projekte.kosten, name: @projekte.name, projektende: @projekte.projektende, projektstart: @projekte.projektstart, status: @projekte.status }
    assert_redirected_to projekte_path(assigns(:projekte))
  end

  test "should destroy projekte" do
    assert_difference('Projekte.count', -1) do
      delete :destroy, id: @projekte
    end

    assert_redirected_to projektes_path
  end
end
