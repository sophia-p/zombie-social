require 'rails_helper'

RSpec.describe PostsController, type: :controller do
	let(:zombie_user) {FactoryGirl.create(:zombie_user)}
	describe "unsigned in user" do
		it "renders new post template" do
			get :new
			expect(response).to have_http_status 302
		end
		it "redirects when user is not signed in" do
			get :new
			expect(response).to redirect_to(new_session_path)
		end
	end
	describe "signed in user" do
		before(:each) do
			login_with zombie_user(FactoryGirl.create(:zombie_user, username:"blaine"))
		end
		it "return http success" do
		end
	end
end
