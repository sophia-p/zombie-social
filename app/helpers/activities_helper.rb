module ActivitiesHelper
	def trackable_words(activity)
		if activity.trackable_type == "Post"
			return  activity.trackable.content
		end
	end
end
