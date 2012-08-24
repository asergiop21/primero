require 'test_helper'

class TrnodosControllerTest < ActionController::TestCase
  setup do
    @trnodo = trnodos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trnodos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trnodo" do
    assert_difference('Trnodo.count') do
      post :create, trnodo: { no_idtorres: @trnodo.no_idtorres, no_iduser: @trnodo.no_iduser, no_ip: @trnodo.no_ip, no_nombre: @trnodo.no_nombre }
    end

    assert_redirected_to trnodo_path(assigns(:trnodo))
  end

  test "should show trnodo" do
    get :show, id: @trnodo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @trnodo
    assert_response :success
  end

  test "should update trnodo" do
    put :update, id: @trnodo, trnodo: { no_idtorres: @trnodo.no_idtorres, no_iduser: @trnodo.no_iduser, no_ip: @trnodo.no_ip, no_nombre: @trnodo.no_nombre }
    assert_redirected_to trnodo_path(assigns(:trnodo))
  end

  test "should destroy trnodo" do
    assert_difference('Trnodo.count', -1) do
      delete :destroy, id: @trnodo
    end

    assert_redirected_to trnodos_path
  end
end
