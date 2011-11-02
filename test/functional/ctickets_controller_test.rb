require 'test_helper'

class CticketsControllerTest < ActionController::TestCase
  setup do
    @cticket = ctickets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ctickets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cticket" do
    assert_difference('Cticket.count') do
      post :create, :cticket => @cticket.attributes
    end

    assert_redirected_to cticket_path(assigns(:cticket))
  end

  test "should show cticket" do
    get :show, :id => @cticket.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @cticket.to_param
    assert_response :success
  end

  test "should update cticket" do
    put :update, :id => @cticket.to_param, :cticket => @cticket.attributes
    assert_redirected_to cticket_path(assigns(:cticket))
  end

  test "should destroy cticket" do
    assert_difference('Cticket.count', -1) do
      delete :destroy, :id => @cticket.to_param
    end

    assert_redirected_to ctickets_path
  end
end
