class Event < ActiveRecord::Base
	validates :title, presence: true, length: { minimum: 5 }
	validates :description, presence: true, length: { minimum: 10 }
	validates :location, presence: true, length: { minimum: 5 }
	validates :date, presence: true
end
