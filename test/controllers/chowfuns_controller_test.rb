require 'test_helper'

class ChowfunsControllerTest < ActionController::TestCase
  setup do
    @chowfun = chowfuns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:chowfuns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create chowfun" do
    assert_difference('Chowfun.count') do
      post :create, chowfun: { img: @chowfun.img, name: @chowfun.name, price: @chowfun.price }
    end

    assert_redirected_to chowfun_path(assigns(:chowfun))
  end

  test "should show chowfun" do
    get :show, id: @chowfun
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @chowfun
    assert_response :success
  end

  test "should update chowfun" do
    patch :update, id: @chowfun, chowfun: { img: @chowfun.img, name: @chowfun.name, price: @chowfun.price }
    assert_redirected_to chowfun_path(assigns(:chowfun))
  end

  test "should destroy chowfun" do
    assert_difference('Chowfun.count', -1) do
      delete :destroy, id: @chowfun
    end

    assert_redirected_to chowfuns_path
  end
end
