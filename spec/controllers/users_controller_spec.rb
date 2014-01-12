require 'spec_helper'

describe UsersController do
	describe "GET #new" do
		it "assigns a new User to @user"

		it "renders the new view"
	end

	describe "POST #create" do
		context "with valid attributes" do
			it "saves a new user in the database"
			it "redirects to root"
		end

		context "with invalid attributes" do
			it "does not save the user in the database"
			it "renders User#new"
		end

end
