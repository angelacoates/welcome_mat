require 'test_helper'

class HomesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @home = homes(:one)
  end

  test "should get index" do
    get homes_url
    assert_response :success
  end

  test "should get new" do
    get new_home_url
    assert_response :success
  end

  test "should create home" do
    assert_difference('Home.count') do
      post homes_url, params: { home: { address: @home.address, bathroms: @home.bathroms, bedrooms: @home.bedrooms, city: @home.city, created_by: @home.created_by, description: @home.description, image_data: @home.image_data, price: @home.price, squarefoot: @home.squarefoot, state: @home.state, year_built: @home.year_built, zipcode: @home.zipcode } }
    end

    assert_redirected_to home_url(Home.last)
  end

  test "should show home" do
    get home_url(@home)
    assert_response :success
  end

  test "should get edit" do
    get edit_home_url(@home)
    assert_response :success
  end

  test "should update home" do
    patch home_url(@home), params: { home: { address: @home.address, bathroms: @home.bathroms, bedrooms: @home.bedrooms, city: @home.city, created_by: @home.created_by, description: @home.description, image_data: @home.image_data, price: @home.price, squarefoot: @home.squarefoot, state: @home.state, year_built: @home.year_built, zipcode: @home.zipcode } }
    assert_redirected_to home_url(@home)
  end

  test "should destroy home" do
    assert_difference('Home.count', -1) do
      delete home_url(@home)
    end

    assert_redirected_to homes_url
  end
end
