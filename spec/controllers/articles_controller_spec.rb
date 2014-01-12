require 'spec_helper'

describe ArticlesController do

	describe "GET #index" do
		context "without params[:user]" do
			it "returns an array of all articles"
			it "renders the :index view"
		end
	end

	describe "GET #show" do
		it "assigns the requested article to @contact"
		it "renders the :show view"
	end

	describe "GET #new" do
		it "assigns a new Article to @article"
		it "renders the :new view"
	end

	describe "POST #create" do
		context "with valid attributes" do
			it "saves the new article in the database"
			it "redirects to articles#show"
		end

		context "with invalid attributes" do
			it "does not save the article in the database"
			it "renders the :new view"
		end
	end

end
