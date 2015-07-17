module ApplicationHelper
	def problem_last_updated
		timeSince = Problem.last.created_at
		result = timeSince.days?.to_s + " days"
	end

	def displayTags(problem)
		data = ""
		unless problem.tags.blank?
		    data = '<div class="tags">'
		    problem.tags.map(&:name).each do |t|
		    	data << '<span class="tag label label-default">'+ t + '</span>' #(link_to t, '/')
			end	
			data << '</div>'  
	 	end
	 	data.html_safe
	end


end
