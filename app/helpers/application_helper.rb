module ApplicationHelper
	#Return the full title on per page basic
	def full_title(pageTitle)
		base_title = "Ruby on Rails Tutorial Sample App"
		if pageTitle.empty?
			base_title
		else
			"#{base_title} | #{pageTitle}"
		end
	end
end
