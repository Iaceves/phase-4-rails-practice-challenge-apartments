require "test_helper"

class ApartmentControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get apartment_index_url
    assert_response :success
  end

  test "should get create" do
    get apartment_create_url
    assert_response :success
  end

  test "should get show" do
    get apartment_show_url
    assert_response :success
  end

  test "should get update" do
    get apartment_update_url
    assert_response :success
  end

  test "should get destroy" do
    get apartment_destroy_url
    assert_response :success
  end
end
