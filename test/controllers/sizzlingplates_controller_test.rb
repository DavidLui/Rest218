require 'test_helper'

class SizzlingplatesControllerTest < ActionController::TestCase
  setup do
    @sizzlingplate = sizzlingplates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sizzlingplates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sizzlingplate" do
    assert_difference('Sizzlingplate.count') do
      post :create, sizzlingplate: { img: @sizzlingplate.img, name: @sizzlingplate.name, price: @sizzlingplate.price }
    end

    assert_redirected_to sizzlingplate_path(assigns(:sizzlingplate))
  end

  test "should show sizzlingplate" do
    get :show, id: @sizzlingplate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sizzlingplate
    assert_response :success
  end

  test "should update sizzlingplate" do
    patch :update, id: @sizzlingplate, sizzlingplate: { img: @sizzlingplate.img, name: @sizzlingplate.name, price: @sizzlingplate.price }
    assert_redirected_to sizzlingplate_path(assigns(:sizzlingplate))
  end

  test "should destroy sizzlingplate" do
    assert_difference('Sizzlingplate.count', -1) do
      delete :destroy, id: @sizzlingplate
    end

    assert_redirected_to sizzlingplates_path
  end
end
