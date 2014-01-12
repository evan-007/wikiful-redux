require 'spec_helper'

describe UsersController do
	describe "GET #new" do
		it "assigns a new User to @user" do
			get :new
			expect(assigns(:user)).to be_a_new(User)
		end

		it "renders the new view" do
			get :new
			expect(response).to render_template(:new)
		end		
	end

	describe "POST #create" do
		context "with valid attributes" do
			it "saves a new user in the database" do
				expect{ post :create, user: attributes_for(:user)}.to \
				change(User, :count).by(1)
			end 

			it "redirects to root" do
				post :create, user: attributes_for(:user)
				expect(response).to redirect_to root_path
			end
		end

		context "with invalid attributes" do
			it "does not save the user in the database" do
				expect{ post :create, user: attributes_for(:user, :name => nil)}.to_not \
				change(User, :count)
			end

			it "renders User#new" do
				post :create, user: attributes_for(:user, :name => nil)
				expect(response).to render_template(:new)
			end
		end
	end
end
