require 'test_helper'

class PreclientesControllerTest < ActionController::TestCase
  setup do
    @precliente = preclientes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:preclientes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create precliente" do
    assert_difference('Precliente.count') do
      post :create, precliente: { pr_apellido: @precliente.pr_apellido, pr_domicilio: @precliente.pr_domicilio, pr_nombre: @precliente.pr_nombre }
    end

    assert_redirected_to precliente_path(assigns(:precliente))
  end

  test "should show precliente" do
    get :show, id: @precliente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @precliente
    assert_response :success
  end

  test "should update precliente" do
    put :update, id: @precliente, precliente: { apellido: @precliente.pr_apellido, domicilio: @precliente.domicilio, nombre: @precliente.nombre }
    assert_redirected_to precliente_path(assigns(:precliente))
  end

  test "should destroy precliente" do
    assert_difference('Precliente.count', -1) do
      delete :destroy, id: @precliente
    end

    assert_redirected_to preclientes_path
  end
end
