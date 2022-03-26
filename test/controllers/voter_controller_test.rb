require "test_helper"

class VoterControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get voter_index_url
    assert_response :success
  end

  test "should get show" do
    get voter_show_url
    assert_response :success
  end

  test "should get update" do
    get voter_update_url
    assert_response :success
  end
end
