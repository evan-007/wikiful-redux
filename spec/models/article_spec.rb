require 'spec_helper'

describe Article do

  it "is valid with a title and body" do
  	article = Article.new(title: "Amazing journalism", body: "what a nice article!")
  	expect(article).to be_valid
  end


  it "is invalid without a title" do
    expect(Article.new(title: nil)).to have(1).errors_on(:title)
  end


  it "is invalid without a body" do 
    expect(Article.new(body: nil)).to have(1).errors_on(:body)
  end

  it "is invalid with a duplicate title" do
  	article = Article.create(title: "Best article", body: "9 Pulitzer prizes")
  	article2 = Article.new(title: "Best article", body: "9 Pulitzer prizes")
  	expect(article2).to_not be_valid
  end
end
