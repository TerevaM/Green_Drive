require "test_helper"

class CarsControllerTest < ActionDispatch::IntegrationTest
<<<<<<< HEAD
  test "should get edit" do
    get cars_edit_url
    assert_response :success
  end

  test "should get update" do
    get cars_update_url
=======
  test "should get index" do
    get cars_index_url
    assert_response :success
  end

  test "should get show" do
    get cars_show_url
    assert_response :success
  end

  test "should get new" do
    get cars_new_url
>>>>>>> 6516a75fe16cb2a315b8da5b13f3933a7ac2487d
    assert_response :success
  end
end
