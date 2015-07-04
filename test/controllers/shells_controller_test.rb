require 'test_helper'

class ShellsControllerTest < ActionController::TestCase
  setup do
    @shell = shells(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shells)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shell" do
    assert_difference('Shell.count') do
      post :create, shell: { img: @shell.img, name: @shell.name, price: @shell.price }
    end

    assert_redirected_to shell_path(assigns(:shell))
  end

  test "should show shell" do
    get :show, id: @shell
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shell
    assert_response :success
  end

  test "should update shell" do
    patch :update, id: @shell, shell: { img: @shell.img, name: @shell.name, price: @shell.price }
    assert_redirected_to shell_path(assigns(:shell))
  end

  test "should destroy shell" do
    assert_difference('Shell.count', -1) do
      delete :destroy, id: @shell
    end

    assert_redirected_to shells_path
  end
end
