require "test_helper"

class CarsControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get cars_edit_url
    assert_response :success
  end

  test "should get update" do
    get cars_update_url
    assert_response :success
  end
end
