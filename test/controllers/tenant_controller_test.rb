require "test_helper"

class TenantControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tenant_index_url
    assert_response :success
  end

  test "should get create" do
    get tenant_create_url
    assert_response :success
  end

  test "should get show" do
    get tenant_show_url
    assert_response :success
  end

  test "should get update" do
    get tenant_update_url
    assert_response :success
  end

  test "should get destroy" do
    get tenant_destroy_url
    assert_response :success
  end
end
