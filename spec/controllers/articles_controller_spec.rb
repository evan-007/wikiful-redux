require 'spec_helper'

describe ArticlesController do

	describe "GET #index" do
		context "without params[:user]" do
			it "returns an array of all articles" do
				raisin = create(:article, title: "raisin")
				grape = create(:article, title: "grape")
				get :index
				expect(assigns(:articles)).to include([raisin, grape])
			end

			it "renders the :index view" do
				get :index
				expect(response).to render_template :index
			end
		end
	end

	describe "GET #show" do
		it "assigns the requested article to @contact" do
			article = create(:article)
			get :show, id: article
			expect(assigns(:article)).to eq article #assigns checks that the value assigned to @article = article
		end

		it "renders the :show view" do
			article = create(:article)
			get :show, id: article
			expect(response).to render_template :show
		end
	end

	describe "GET #new" do
		it "assigns a new Article to @article" do
			get :new
			expect(assigns(:article)).to be_a_new(Article)
		end

		it "renders the :new view" do
			get :new
			expect(response).to render_template :new
		end
	end

	describe "POST #create" do
		context "with valid attributes" do
			it "saves the new article in the database" do
				expect{
					post :create, article: attributes_for(:article)
					}.to change(Article, :count).by(1)
			end

			it "redirects to articles#show" do
				post :create, article: attributes_for(:article)
				expect(response).to redirect_to article_path(assigns[:article])
				end 
		end

		context "with invalid attributes" do
			it "does not save the article in the database" do
				expect{
					post :create, article: attributes_for(:article, :title => nil)
					}.to_not change(Article, :count).by(1)
				end
				
			it "renders the :new view" do
				post :create, article: attributes_for(:article, :title => nil)
				expect(response).to render_template :new
			end
		end
	end

end
