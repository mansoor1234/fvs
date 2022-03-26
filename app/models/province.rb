class Province < ApplicationRecord
	has_many :districts
	belongs_to :user
end
