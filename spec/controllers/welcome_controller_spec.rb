require 'rails_helper'

RSpec.describe WelcomeController, type: :controller do
	describe "GET login page" do
		it "redirects if user not signed in" do
			expect(response).to redirect_to '/sessions/new'
		end
	end
end
