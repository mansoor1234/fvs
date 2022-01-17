require "test_helper"

class ProvinceControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get province_index_url
    assert_response :success
  end

  test "should get show" do
    get province_show_url
    assert_response :success
  end

  test "should get update" do
    get province_update_url
    assert_response :success
  end

  test "should get delete" do
    get province_delete_url
    assert_response :success
  end
end
