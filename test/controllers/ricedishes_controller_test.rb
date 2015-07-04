require 'test_helper'

class RicedishesControllerTest < ActionController::TestCase
  setup do
    @ricedish = ricedishes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ricedishes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ricedish" do
    assert_difference('Ricedish.count') do
      post :create, ricedish: { img: @ricedish.img, name: @ricedish.name, price: @ricedish.price }
    end

    assert_redirected_to ricedish_path(assigns(:ricedish))
  end

  test "should show ricedish" do
    get :show, id: @ricedish
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ricedish
    assert_response :success
  end

  test "should update ricedish" do
    patch :update, id: @ricedish, ricedish: { img: @ricedish.img, name: @ricedish.name, price: @ricedish.price }
    assert_redirected_to ricedish_path(assigns(:ricedish))
  end

  test "should destroy ricedish" do
    assert_difference('Ricedish.count', -1) do
      delete :destroy, id: @ricedish
    end

    assert_redirected_to ricedishes_path
  end
end
