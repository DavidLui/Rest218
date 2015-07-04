require 'test_helper'

class SeafoodsControllerTest < ActionController::TestCase
  setup do
    @seafood = seafoods(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:seafoods)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create seafood" do
    assert_difference('Seafood.count') do
      post :create, seafood: { img: @seafood.img, name: @seafood.name, price: @seafood.price }
    end

    assert_redirected_to seafood_path(assigns(:seafood))
  end

  test "should show seafood" do
    get :show, id: @seafood
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @seafood
    assert_response :success
  end

  test "should update seafood" do
    patch :update, id: @seafood, seafood: { img: @seafood.img, name: @seafood.name, price: @seafood.price }
    assert_redirected_to seafood_path(assigns(:seafood))
  end

  test "should destroy seafood" do
    assert_difference('Seafood.count', -1) do
      delete :destroy, id: @seafood
    end

    assert_redirected_to seafoods_path
  end
end
