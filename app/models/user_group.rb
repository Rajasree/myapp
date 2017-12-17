class UserGroup < ApplicationRecord

	# Associations
	has_one :director, :class_name => "User", :foreign_key => "director_id"
	has_one :assistant_director, :class_name => "User", :foreign_key => "assistant_director_id"
	has_one :member, :class_name => "User", :foreign_key => "member_id"

	#validation
	validates :name, presence: true, uniqueness: true
	validates :director_id, presence: true
	validates :assistant_director_id, presence: true
	validates :member_id, presence: true

	validate :roles_not_same

	def roles_not_same
		errors.add(:director_id, "check the director and assistant_director") if director_id.present? && assistant_director_id.present? && (director_id == assistant_director_id)
		errors.add(:assistant_director_id, "check the director and member") if director_id.present? && member_id.present? && (director_id == member_id)
		errors.add(:member_id, "check the assistant_director_id and member") if assistant_director_id.present? && member_id.present? && (assistant_director_id == member_id)
	end
end
