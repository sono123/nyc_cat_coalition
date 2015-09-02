class Faq < ActiveRecord::Base
	validates :question, presence: true, length: { minimum: 5 }
	validates :answer, presence: true, length: { minimum: 5 }
end
