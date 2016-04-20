class Project < ActiveRecord::Base
	has_many :time_entries
	validates :name, presence: true, uniqueness: true, length: {maximum: 10}, format: {with: /\[a-zA-Z0-9]/}
end
