class Role < ApplicationRecord

	# Associations
	has_many :users

	#validation
	validates :role, presence: true, uniqueness: true
end
