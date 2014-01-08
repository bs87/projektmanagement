require 'test_helper'

class RoadstopsControllerTest < ActionController::TestCase
  setup do
    @roadstop = roadstops(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:roadstops)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create roadstop" do
    assert_difference('Roadstop.count') do
      post :create, roadstop: { ProjektID: @roadstop.ProjektID, Roadstopsdate: @roadstop.Roadstopsdate, Roadstopspart: @roadstop.Roadstopspart }
    end

    assert_redirected_to roadstop_path(assigns(:roadstop))
  end

  test "should show roadstop" do
    get :show, id: @roadstop
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @roadstop
    assert_response :success
  end

  test "should update roadstop" do
    patch :update, id: @roadstop, roadstop: { ProjektID: @roadstop.ProjektID, Roadstopsdate: @roadstop.Roadstopsdate, Roadstopspart: @roadstop.Roadstopspart }
    assert_redirected_to roadstop_path(assigns(:roadstop))
  end

  test "should destroy roadstop" do
    assert_difference('Roadstop.count', -1) do
      delete :destroy, id: @roadstop
    end

    assert_redirected_to roadstops_path
  end
end
