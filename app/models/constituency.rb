class Constituency < ApplicationRecord
	has_many :polling_stations
	belongs_to :district
end
