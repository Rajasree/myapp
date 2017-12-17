class User < ApplicationRecord

	# Associations
	belongs_to :role
	has_many :user_groups

	#validation
	validates :name, presence: true, uniqueness: true
	validates :role_id, presence: true, uniqueness: true
end
