require 'test_helper'

class ChickensControllerTest < ActionController::TestCase
  setup do
    @chicken = chickens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:chickens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create chicken" do
    assert_difference('Chicken.count') do
      post :create, chicken: @chicken.attributes
    end

    assert_redirected_to chicken_path(assigns(:chicken))
  end

  test "should show chicken" do
    get :show, id: @chicken.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @chicken.to_param
    assert_response :success
  end

  test "should update chicken" do
    put :update, id: @chicken.to_param, chicken: @chicken.attributes
    assert_redirected_to chicken_path(assigns(:chicken))
  end

  test "should destroy chicken" do
    assert_difference('Chicken.count', -1) do
      delete :destroy, id: @chicken.to_param
    end

    assert_redirected_to chickens_path
  end
end
