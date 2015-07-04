require 'test_helper'

class RiceincasserolesControllerTest < ActionController::TestCase
  setup do
    @riceincasserole = riceincasseroles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:riceincasseroles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create riceincasserole" do
    assert_difference('Riceincasserole.count') do
      post :create, riceincasserole: { img: @riceincasserole.img, name: @riceincasserole.name, price: @riceincasserole.price }
    end

    assert_redirected_to riceincasserole_path(assigns(:riceincasserole))
  end

  test "should show riceincasserole" do
    get :show, id: @riceincasserole
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @riceincasserole
    assert_response :success
  end

  test "should update riceincasserole" do
    patch :update, id: @riceincasserole, riceincasserole: { img: @riceincasserole.img, name: @riceincasserole.name, price: @riceincasserole.price }
    assert_redirected_to riceincasserole_path(assigns(:riceincasserole))
  end

  test "should destroy riceincasserole" do
    assert_difference('Riceincasserole.count', -1) do
      delete :destroy, id: @riceincasserole
    end

    assert_redirected_to riceincasseroles_path
  end
end
