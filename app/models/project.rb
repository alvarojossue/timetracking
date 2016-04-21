class Project < ActiveRecord::Base
	has_many :time_entries
	validates :name, presence: true, uniqueness: true, length: {maximum: 10}, format: {with: /\[a-zA-Z0-9]/}

def self.clean_old
	old_projects = Project.where("created_at < ?", 1.week.ago)
	old_projects.destroy_all
end

end

