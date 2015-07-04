require 'test_helper'

class LomeinsControllerTest < ActionController::TestCase
  setup do
    @lomein = lomeins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lomeins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lomein" do
    assert_difference('Lomein.count') do
      post :create, lomein: { img: @lomein.img, name: @lomein.name, price: @lomein.price }
    end

    assert_redirected_to lomein_path(assigns(:lomein))
  end

  test "should show lomein" do
    get :show, id: @lomein
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lomein
    assert_response :success
  end

  test "should update lomein" do
    patch :update, id: @lomein, lomein: { img: @lomein.img, name: @lomein.name, price: @lomein.price }
    assert_redirected_to lomein_path(assigns(:lomein))
  end

  test "should destroy lomein" do
    assert_difference('Lomein.count', -1) do
      delete :destroy, id: @lomein
    end

    assert_redirected_to lomeins_path
  end
end
