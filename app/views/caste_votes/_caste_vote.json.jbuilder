json.extract! caste_vote, :id, :polling_id, :candidate_id, :voter_id, :created_at, :updated_at
json.url caste_vote_url(caste_vote, format: :json)
