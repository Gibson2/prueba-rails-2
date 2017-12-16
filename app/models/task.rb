class Task < ApplicationRecord
	has_many :todos
	has_many :users, through: :todos


	def completed?(user)
		users.include?(user)
	end

	def self.task_count(user)
		user.tasks.count
	end

end
