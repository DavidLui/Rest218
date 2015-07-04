require 'test_helper'

class CongeeincasserolesControllerTest < ActionController::TestCase
  setup do
    @congeeincasserole = congeeincasseroles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:congeeincasseroles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create congeeincasserole" do
    assert_difference('Congeeincasserole.count') do
      post :create, congeeincasserole: { img: @congeeincasserole.img, name: @congeeincasserole.name, price: @congeeincasserole.price }
    end

    assert_redirected_to congeeincasserole_path(assigns(:congeeincasserole))
  end

  test "should show congeeincasserole" do
    get :show, id: @congeeincasserole
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @congeeincasserole
    assert_response :success
  end

  test "should update congeeincasserole" do
    patch :update, id: @congeeincasserole, congeeincasserole: { img: @congeeincasserole.img, name: @congeeincasserole.name, price: @congeeincasserole.price }
    assert_redirected_to congeeincasserole_path(assigns(:congeeincasserole))
  end

  test "should destroy congeeincasserole" do
    assert_difference('Congeeincasserole.count', -1) do
      delete :destroy, id: @congeeincasserole
    end

    assert_redirected_to congeeincasseroles_path
  end
end
