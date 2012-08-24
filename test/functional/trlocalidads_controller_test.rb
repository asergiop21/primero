require 'test_helper'

class TrlocalidadsControllerTest < ActionController::TestCase
  setup do
    @trlocalidad = trlocalidads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trlocalidads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trlocalidad" do
    assert_difference('Trlocalidad.count') do
      post :create, trlocalidad: { lo_cp: @trlocalidad.lo_cp, lo_dpto: @trlocalidad.lo_dpto, lo_nombre: @trlocalidad.lo_nombre, lo_provincia: @trlocalidad.lo_provincia }
    end

    assert_redirected_to trlocalidad_path(assigns(:trlocalidad))
  end

  test "should show trlocalidad" do
    get :show, id: @trlocalidad
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @trlocalidad
    assert_response :success
  end

  test "should update trlocalidad" do
    put :update, id: @trlocalidad, trlocalidad: { lo_cp: @trlocalidad.lo_cp, lo_dpto: @trlocalidad.lo_dpto, lo_nombre: @trlocalidad.lo_nombre, lo_provincia: @trlocalidad.lo_provincia }
    assert_redirected_to trlocalidad_path(assigns(:trlocalidad))
  end

  test "should destroy trlocalidad" do
    assert_difference('Trlocalidad.count', -1) do
      delete :destroy, id: @trlocalidad
    end

    assert_redirected_to trlocalidads_path
  end
end
