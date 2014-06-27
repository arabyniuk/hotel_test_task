require 'test_helper'

class MotelsControllerTest < ActionController::TestCase
  setup do
    @motel = motels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:motels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create motel" do
    assert_difference('Motel.count') do
      post :create, motel: { breakfast: @motel.breakfast, description: @motel.description, price: @motel.price, rating: @motel.rating, title: @motel.title }
    end

    assert_redirected_to motel_path(assigns(:motel))
  end

  test "should show motel" do
    get :show, id: @motel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @motel
    assert_response :success
  end

  test "should update motel" do
    patch :update, id: @motel, motel: { breakfast: @motel.breakfast, description: @motel.description, price: @motel.price, rating: @motel.rating, title: @motel.title }
    assert_redirected_to motel_path(assigns(:motel))
  end

  test "should destroy motel" do
    assert_difference('Motel.count', -1) do
      delete :destroy, id: @motel
    end

    assert_redirected_to motels_path
  end
end
