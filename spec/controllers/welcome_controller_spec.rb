require 'rails_helper'

RSpec.describe WelcomeController, type: :controller do
	describe "GET login page" do
		it "redirects if user not signed in" do
			get :index
			expect(response).to redirect_to(new_session_path)
		end
	end
end
