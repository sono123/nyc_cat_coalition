class Event < ActiveRecord::Base
	validates :title, presence: true, length: { minimum: 5 }
	validates :description, presence: true, length: { minimum: 10 }
	validates :location, presence: true, length: { minimum: 5 }
	validates :date, presence: true

	def self.upcoming
		Event.where('date >= ?', Time.new)
	end

	def self.past
		Event.where('date < ?', Time.new)
	end
end
