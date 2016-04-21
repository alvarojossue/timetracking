class Project < ActiveRecord::Base
	has_many :time_entries
	validates :name, presence: true, uniqueness: true, format: {with: /[\w]/}

def self.clean_old
	old_projects = Project.where("created_at < ?", 1.week.ago)
	old_projects.destroy_all
end

end

