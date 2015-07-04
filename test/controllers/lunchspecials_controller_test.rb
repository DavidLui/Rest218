require 'test_helper'

class LunchspecialsControllerTest < ActionController::TestCase
  setup do
    @lunchspecial = lunchspecials(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lunchspecials)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lunchspecial" do
    assert_difference('Lunchspecial.count') do
      post :create, lunchspecial: { img: @lunchspecial.img, name: @lunchspecial.name, price: @lunchspecial.price }
    end

    assert_redirected_to lunchspecial_path(assigns(:lunchspecial))
  end

  test "should show lunchspecial" do
    get :show, id: @lunchspecial
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lunchspecial
    assert_response :success
  end

  test "should update lunchspecial" do
    patch :update, id: @lunchspecial, lunchspecial: { img: @lunchspecial.img, name: @lunchspecial.name, price: @lunchspecial.price }
    assert_redirected_to lunchspecial_path(assigns(:lunchspecial))
  end

  test "should destroy lunchspecial" do
    assert_difference('Lunchspecial.count', -1) do
      delete :destroy, id: @lunchspecial
    end

    assert_redirected_to lunchspecials_path
  end
end
