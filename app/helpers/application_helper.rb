module ApplicationHelper
	def date_formatter(date)
		date.strftime("%b %d, %Y")
	end
end
