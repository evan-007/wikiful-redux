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
  
  it "has many categories"

  it "is invalid without a category"
end
