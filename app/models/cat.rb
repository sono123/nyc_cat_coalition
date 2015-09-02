class Cat < ActiveRecord::Base
	has_many :pictures, dependent: :destroy
	validates :name, presence: true, length: { minimum: 2 }
	validates :description, presence: true, length: { minimum: 10 }
	validates :age, presence: true
end
