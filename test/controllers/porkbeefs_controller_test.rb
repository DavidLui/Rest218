require 'test_helper'

class PorkbeefsControllerTest < ActionController::TestCase
  setup do
    @porkbeef = porkbeefs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:porkbeefs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create porkbeef" do
    assert_difference('Porkbeef.count') do
      post :create, porkbeef: { img: @porkbeef.img, name: @porkbeef.name, price: @porkbeef.price }
    end

    assert_redirected_to porkbeef_path(assigns(:porkbeef))
  end

  test "should show porkbeef" do
    get :show, id: @porkbeef
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @porkbeef
    assert_response :success
  end

  test "should update porkbeef" do
    patch :update, id: @porkbeef, porkbeef: { img: @porkbeef.img, name: @porkbeef.name, price: @porkbeef.price }
    assert_redirected_to porkbeef_path(assigns(:porkbeef))
  end

  test "should destroy porkbeef" do
    assert_difference('Porkbeef.count', -1) do
      delete :destroy, id: @porkbeef
    end

    assert_redirected_to porkbeefs_path
  end
end
