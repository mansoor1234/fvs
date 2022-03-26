json.extract! candidate, :id, :name, :cnic, :polling_id, :created_at, :updated_at
json.url candidate_url(candidate, format: :json)
