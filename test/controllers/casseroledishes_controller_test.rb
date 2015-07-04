require 'test_helper'

class CasseroledishesControllerTest < ActionController::TestCase
  setup do
    @casseroledish = casseroledishes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:casseroledishes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create casseroledish" do
    assert_difference('Casseroledish.count') do
      post :create, casseroledish: { img: @casseroledish.img, name: @casseroledish.name, price: @casseroledish.price }
    end

    assert_redirected_to casseroledish_path(assigns(:casseroledish))
  end

  test "should show casseroledish" do
    get :show, id: @casseroledish
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @casseroledish
    assert_response :success
  end

  test "should update casseroledish" do
    patch :update, id: @casseroledish, casseroledish: { img: @casseroledish.img, name: @casseroledish.name, price: @casseroledish.price }
    assert_redirected_to casseroledish_path(assigns(:casseroledish))
  end

  test "should destroy casseroledish" do
    assert_difference('Casseroledish.count', -1) do
      delete :destroy, id: @casseroledish
    end

    assert_redirected_to casseroledishes_path
  end
end
