require 'test_helper'

class ListEmailsControllerTest < ActionController::TestCase
  setup do
    @list_email = list_emails(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:list_emails)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create list_email" do
    assert_difference('ListEmail.count') do
      post :create, :list_email => @list_email.attributes
    end

    assert_redirected_to list_email_path(assigns(:list_email))
  end

  test "should show list_email" do
    get :show, :id => @list_email.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @list_email.to_param
    assert_response :success
  end

  test "should update list_email" do
    put :update, :id => @list_email.to_param, :list_email => @list_email.attributes
    assert_redirected_to list_email_path(assigns(:list_email))
  end

  test "should destroy list_email" do
    assert_difference('ListEmail.count', -1) do
      delete :destroy, :id => @list_email.to_param
    end

    assert_redirected_to list_emails_path
  end
end
