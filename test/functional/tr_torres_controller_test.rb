require 'test_helper'

class TrTorresControllerTest < ActionController::TestCase
  setup do
    @tr_torre = tr_torres(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tr_torres)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tr_torre" do
    assert_difference('TrTorre.count') do
      post :create, tr_torre: { tr_localidad: @tr_torre.tr_localidad, tr_nombre: @tr_torre.tr_nombre, tr_respon: @tr_torre.tr_respon }
    end

    assert_redirected_to tr_torre_path(assigns(:tr_torre))
  end

  test "should show tr_torre" do
    get :show, id: @tr_torre
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tr_torre
    assert_response :success
  end

  test "should update tr_torre" do
    put :update, id: @tr_torre, tr_torre: { tr_localidad: @tr_torre.tr_localidad, tr_nombre: @tr_torre.tr_nombre, tr_respon: @tr_torre.tr_respon }
    assert_redirected_to tr_torre_path(assigns(:tr_torre))
  end

  test "should destroy tr_torre" do
    assert_difference('TrTorre.count', -1) do
      delete :destroy, id: @tr_torre
    end

    assert_redirected_to tr_torres_path
  end
end
