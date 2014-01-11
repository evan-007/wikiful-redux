require 'spec_helper'

describe Article do
  before(:each) do
  	# category_double = double('category')
  	# category_double.should_receive(:name).and_return('Breaking news!')
  	@article = Article.new(title: "Amazing journalism", content: "what a nice article!")
  end

  it "is valid with a title, content and category" do
  	@article.should be_valid
  end


  it "is invalid without a title" do
    @article.title = nil
    expect(@article).to have(1).errors_on(:title)
  end


  it "is invalid without content" do 
  	@article.content = nil
    expect(@article).to have(1).errors_on(:content)
  end

  it "is invalid with a duplicate title" do
  	article = Article.create(title: "Breaking News", content: "The sky is blue")
  	article2 = Article.new(title: "Breaking News", content: "The sky is blue")
  	expect(article2).to_not be_valid #or expect(article2).to have(1).errors_on(:title)
  end
  
  it "has many categories" 


  # it "is invalid without a category" do
  # 	@article.categories == nil
  # 	expect(@article).to have(1).errors_on(:categories)
  # end
end
