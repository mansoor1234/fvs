require "test_helper"

class CasteVotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @caste_vote = caste_votes(:one)
  end

  test "should get index" do
    get caste_votes_url
    assert_response :success
  end

  test "should get new" do
    get new_caste_vote_url
    assert_response :success
  end

  test "should create caste_vote" do
    assert_difference('CasteVote.count') do
      post caste_votes_url, params: { caste_vote: { candidate_id: @caste_vote.candidate_id, polling_id: @caste_vote.polling_id, voter_id: @caste_vote.voter_id } }
    end

    assert_redirected_to caste_vote_url(CasteVote.last)
  end

  test "should show caste_vote" do
    get caste_vote_url(@caste_vote)
    assert_response :success
  end

  test "should get edit" do
    get edit_caste_vote_url(@caste_vote)
    assert_response :success
  end

  test "should update caste_vote" do
    patch caste_vote_url(@caste_vote), params: { caste_vote: { candidate_id: @caste_vote.candidate_id, polling_id: @caste_vote.polling_id, voter_id: @caste_vote.voter_id } }
    assert_redirected_to caste_vote_url(@caste_vote)
  end

  test "should destroy caste_vote" do
    assert_difference('CasteVote.count', -1) do
      delete caste_vote_url(@caste_vote)
    end

    assert_redirected_to caste_votes_url
  end
end
