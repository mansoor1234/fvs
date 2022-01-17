class District < ApplicationRecord
	has_many :constituencies
	belongs_to :province
end
