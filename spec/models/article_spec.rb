require 'spec_helper'

describe Article do
  before(:each) do
  	@article = Article.new(title: "Amazing journalism", body: "what a nice article!")
  end

  it "is valid with a title and body" do
  	@article.should be_valid
  end


  it "is invalid without a title" do
    @article.title = nil
    expect(@article).to have(1).errors_on(:title)
  end


  it "is invalid without a body" do 
  	@article.body = nil
    expect(@article).to have(1).errors_on(:body)
  end

  it "is invalid with a duplicate title" do
  	article = Article.create(title: "Best article", body: "9 Pulitzer prizes")
  	article2 = Article.new(title: "Best article", body: "9 Pulitzer prizes")
  	expect(article2).to_not be_valid #or expect(article2).to have(1).errors_on(:title)
  end

  it "belongs to a user" do
  	# article = Article.create(title: "Best article", body: "9 Pulitzer prizes", user_id: 1)
  	# user = mock_model("User", :user_id => 1, :name => "Santa")
  	# expect(article.user.find(params[:user_id]).name).to eq("Santa")
  end

  it "is not valid without a user" do
  	# article = Article.new(title: "Best article", body: "9 Pulitzer prizes")
  	# article.user = nil
  	# expect(article).to_not be_valid
  end
  
  #this needs a double because we have no user model yet

  it "has a category"

  it "has many categories"

  it "is invalid without a category"
end
