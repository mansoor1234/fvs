class Voter < ApplicationRecord
	belongs_to :polling_station
	has_many :caste_votes
end
