class Contact < ActiveRecord::Base
	validates :header, presence: true, length: { minimum: 5 }
	validates :body, presence: true, length: { minimum: 5 }
	validates :phone, presence: true, length: { minimum: 7 }
end
