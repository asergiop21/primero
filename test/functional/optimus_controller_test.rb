require 'test_helper'

class OptimusControllerTest < ActionController::TestCase
  setup do
    @optimu = optimus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:optimus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create optimu" do
    assert_difference('Optimu.count') do
      post :create, optimu: { nombre: @optimu.nombre }
    end

    assert_redirected_to optimu_path(assigns(:optimu))
  end

  test "should show optimu" do
    get :show, id: @optimu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @optimu
    assert_response :success
  end

  test "should update optimu" do
    put :update, id: @optimu, optimu: { nombre: @optimu.nombre }
    assert_redirected_to optimu_path(assigns(:optimu))
  end

  test "should destroy optimu" do
    assert_difference('Optimu.count', -1) do
      delete :destroy, id: @optimu
    end

    assert_redirected_to optimus_path
  end
end
