class Candidate < ApplicationRecord
  belongs_to :polling_station, class_name: 'PollingStation', foreign_key: :polling_id
  has_many :voters
end
