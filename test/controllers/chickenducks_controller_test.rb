require 'test_helper'

class ChickenducksControllerTest < ActionController::TestCase
  setup do
    @chickenduck = chickenducks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:chickenducks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create chickenduck" do
    assert_difference('Chickenduck.count') do
      post :create, chickenduck: { img: @chickenduck.img, name: @chickenduck.name, price: @chickenduck.price }
    end

    assert_redirected_to chickenduck_path(assigns(:chickenduck))
  end

  test "should show chickenduck" do
    get :show, id: @chickenduck
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @chickenduck
    assert_response :success
  end

  test "should update chickenduck" do
    patch :update, id: @chickenduck, chickenduck: { img: @chickenduck.img, name: @chickenduck.name, price: @chickenduck.price }
    assert_redirected_to chickenduck_path(assigns(:chickenduck))
  end

  test "should destroy chickenduck" do
    assert_difference('Chickenduck.count', -1) do
      delete :destroy, id: @chickenduck
    end

    assert_redirected_to chickenducks_path
  end
end
