module ActivitiesHelper
	def trackable_words(activity)
		if activity.trackable_type == "Post"
			return " posted " + activity.trackable.post.content
		end
	end
end
