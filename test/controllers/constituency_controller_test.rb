require "test_helper"

class ConstituencyControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get constituency_index_url
    assert_response :success
  end

  test "should get show" do
    get constituency_show_url
    assert_response :success
  end

  test "should get update" do
    get constituency_update_url
    assert_response :success
  end

  test "should get delete" do
    get constituency_delete_url
    assert_response :success
  end
end
