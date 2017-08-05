FactoryGirl.define do
	factory :zombie_user do 
		username "blaine"
		email "blaine@email.com"
		password_digest "123456"
		fav_hot_sauce "sriracha"
	end
end