require 'test_helper'

class ListaControllerTest < ActionController::TestCase
  setup do
    @listum = lista(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lista)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create listum" do
    assert_difference('Listum.count') do
      post :create, :listum => @listum.attributes
    end

    assert_redirected_to listum_path(assigns(:listum))
  end

  test "should show listum" do
    get :show, :id => @listum.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @listum.to_param
    assert_response :success
  end

  test "should update listum" do
    put :update, :id => @listum.to_param, :listum => @listum.attributes
    assert_redirected_to listum_path(assigns(:listum))
  end

  test "should destroy listum" do
    assert_difference('Listum.count', -1) do
      delete :destroy, :id => @listum.to_param
    end

    assert_redirected_to lista_path
  end
end
