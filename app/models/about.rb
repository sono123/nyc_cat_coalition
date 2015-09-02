class About < ActiveRecord::Base
	validates :header, presence: true, length: { minimum: 5 }
	validates :body, presence: true, length: { minimum: 5 }
end
