require 'test_helper'

class ChefrecommendsControllerTest < ActionController::TestCase
  setup do
    @chefrecommend = chefrecommends(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:chefrecommends)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create chefrecommend" do
    assert_difference('Chefrecommend.count') do
      post :create, chefrecommend: { img: @chefrecommend.img, name: @chefrecommend.name, price: @chefrecommend.price }
    end

    assert_redirected_to chefrecommend_path(assigns(:chefrecommend))
  end

  test "should show chefrecommend" do
    get :show, id: @chefrecommend
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @chefrecommend
    assert_response :success
  end

  test "should update chefrecommend" do
    patch :update, id: @chefrecommend, chefrecommend: { img: @chefrecommend.img, name: @chefrecommend.name, price: @chefrecommend.price }
    assert_redirected_to chefrecommend_path(assigns(:chefrecommend))
  end

  test "should destroy chefrecommend" do
    assert_difference('Chefrecommend.count', -1) do
      delete :destroy, id: @chefrecommend
    end

    assert_redirected_to chefrecommends_path
  end
end
