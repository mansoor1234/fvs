class CasteVote < ApplicationRecord
 belongs_to :candidate
 belongs_to :voter
 belongs_to :polling_station
end