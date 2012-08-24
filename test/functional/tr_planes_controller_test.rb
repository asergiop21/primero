require 'test_helper'

class TrPlanesControllerTest < ActionController::TestCase
  setup do
    @tr_plane = tr_planes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tr_planes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tr_plane" do
    assert_difference('TrPlane.count') do
      post :create, tr_plane: { pl_elim: @tr_plane.pl_elim, pl_importe: @tr_plane.pl_importe, pl_nombre: @tr_plane.pl_nombre, pl_veloc: @tr_plane.pl_veloc, us_idusuario: @tr_plane.us_idusuario }
    end

    assert_redirected_to tr_plane_path(assigns(:tr_plane))
  end

  test "should show tr_plane" do
    get :show, id: @tr_plane
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tr_plane
    assert_response :success
  end

  test "should update tr_plane" do
    put :update, id: @tr_plane, tr_plane: { pl_elim: @tr_plane.pl_elim, pl_importe: @tr_plane.pl_importe, pl_nombre: @tr_plane.pl_nombre, pl_veloc: @tr_plane.pl_veloc, us_idusuario: @tr_plane.us_idusuario }
    assert_redirected_to tr_plane_path(assigns(:tr_plane))
  end

  test "should destroy tr_plane" do
    assert_difference('TrPlane.count', -1) do
      delete :destroy, id: @tr_plane
    end

    assert_redirected_to tr_planes_path
  end
end
