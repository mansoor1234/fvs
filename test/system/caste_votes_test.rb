require "application_system_test_case"

class CasteVotesTest < ApplicationSystemTestCase
  setup do
    @caste_vote = caste_votes(:one)
  end

  test "visiting the index" do
    visit caste_votes_url
    assert_selector "h1", text: "Caste Votes"
  end

  test "creating a Caste vote" do
    visit caste_votes_url
    click_on "New Caste Vote"

    fill_in "Candidate", with: @caste_vote.candidate_id
    fill_in "Polling", with: @caste_vote.polling_id
    fill_in "Voter", with: @caste_vote.voter_id
    click_on "Create Caste vote"

    assert_text "Caste vote was successfully created"
    click_on "Back"
  end

  test "updating a Caste vote" do
    visit caste_votes_url
    click_on "Edit", match: :first

    fill_in "Candidate", with: @caste_vote.candidate_id
    fill_in "Polling", with: @caste_vote.polling_id
    fill_in "Voter", with: @caste_vote.voter_id
    click_on "Update Caste vote"

    assert_text "Caste vote was successfully updated"
    click_on "Back"
  end

  test "destroying a Caste vote" do
    visit caste_votes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Caste vote was successfully destroyed"
  end
end
