require 'test_helper'

class RestaurantPlacesControllerTest < ActionController::TestCase
  setup do
    @restaurant_place = restaurant_places(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:restaurant_places)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create restaurant_place" do
    assert_difference('RestaurantPlace.count') do
      post :create, restaurant_place: { address: @restaurant_place.address, name: @restaurant_place.name }
    end

    assert_redirected_to restaurant_place_path(assigns(:restaurant_place))
  end

  test "should show restaurant_place" do
    get :show, id: @restaurant_place
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @restaurant_place
    assert_response :success
  end

  test "should update restaurant_place" do
    patch :update, id: @restaurant_place, restaurant_place: { address: @restaurant_place.address, name: @restaurant_place.name }
    assert_redirected_to restaurant_place_path(assigns(:restaurant_place))
  end

  test "should destroy restaurant_place" do
    assert_difference('RestaurantPlace.count', -1) do
      delete :destroy, id: @restaurant_place
    end

    assert_redirected_to restaurant_places_path
  end
end
