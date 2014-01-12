require 'spec_helper'

describe SessionsController do
	describe "GET #new" do
		it "renders the new view" do
			get :new
			expect(response).to render_template(:new)
		end
	end

	describe "POST #create" do
		it "does something"
	end

	describe "DELETE #destroy" do
		it "deletes some stuff"
	end

end
