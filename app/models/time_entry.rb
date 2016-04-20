class TimeEntry < ActiveRecord::Base
	belongs_to :project
	validates :date, presence: true
	validates :hours, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 0}
	validates :minutes, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 0}
	validates_associated :projects
end
