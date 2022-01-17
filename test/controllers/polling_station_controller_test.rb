require "test_helper"

class PollingStationControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get polling_station_index_url
    assert_response :success
  end

  test "should get show" do
    get polling_station_show_url
    assert_response :success
  end

  test "should get update" do
    get polling_station_update_url
    assert_response :success
  end

  test "should get delete" do
    get polling_station_delete_url
    assert_response :success
  end
end
