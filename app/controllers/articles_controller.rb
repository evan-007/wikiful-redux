class ArticlesController < ApplicationController
	before_filter :authorize, only: [:new, :create]

	def show
		@article = Article.find(params[:id])
	end

	def index
		@articles = Article.all
	end

	def new
		@article = Article.new
	end

	def create
		@article = Article.create(article_params)
		if @article.valid?
			flash[:notice] = "Thanks for writing for this demo site!"
			redirect_to @article
		else
			render 'new'
		end
	end
end

    private
        def article_params
        	params.require(:article).permit(:title, :content)
        end