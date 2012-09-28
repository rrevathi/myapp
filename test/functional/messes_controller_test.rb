require 'test_helper'

class MessesControllerTest < ActionController::TestCase
  setup do
    @mess = messes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:messes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mess" do
    assert_difference('Mess.count') do
      post :create, :mess => @mess.attributes
    end

    assert_redirected_to mess_path(assigns(:mess))
  end

  test "should show mess" do
    get :show, :id => @mess.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @mess.to_param
    assert_response :success
  end

  test "should update mess" do
    put :update, :id => @mess.to_param, :mess => @mess.attributes
    assert_redirected_to mess_path(assigns(:mess))
  end

  test "should destroy mess" do
    assert_difference('Mess.count', -1) do
      delete :destroy, :id => @mess.to_param
    end

    assert_redirected_to messes_path
  end
end
