require 'spec_helper'

describe SessionsController do
	describe "GET #new" do
		it "renders the new view" do
			get :new
			expect(response).to render_template(:new)
		end
	end

	describe "POST #create" do
		context "correct login information" do
			it "sets the user session"
			it "redirects to root"
		end
		
		context "incorrect login information" do
			it "does not set a session"
			it "renders the new view"
		end
	end

	describe "DELETE #destroy" do
		it "closes the session"
		it "renders root"
	end

end
