json.extract! voter, :id, :name, :cnic, :fingerprint, :created_at, :updated_at
json.url voter_url(voter, format: :json)
