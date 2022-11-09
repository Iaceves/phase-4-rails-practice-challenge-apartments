require "test_helper"

class LeaseControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get lease_index_url
    assert_response :success
  end

  test "should get create" do
    get lease_create_url
    assert_response :success
  end

  test "should get destroy" do
    get lease_destroy_url
    assert_response :success
  end
end
