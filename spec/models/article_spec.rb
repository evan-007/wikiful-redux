require 'spec_helper'

describe Article do
  before(:each) do
  	# category_double = double('category')
   #  category_double.should_receive(:in).and_return(1)
  	# category_double.should_receive(:name).and_return('Breaking news!')
  	@article = Article.new(title: "Amazing journalism", content: "what a nice article!")
  end

  it "is valid with a title, content and category" do
  	build(:article).should be_valid
  end


  it "is invalid without a title" do
    
    expect(build(:article, :title => nil)).to have(1).errors_on(:title)
  end


  it "is invalid without content" do 
    expect(build(:article, :content => nil)).to have(1).errors_on(:content)
  end

  it "is invalid with a duplicate title" do
  	create(:article, :title => "your mom's favorite book")
  	expect(build(:article, :title => "your mom's favorite book")).to_not be_valid
  end
  
  it "has many categories" 


  it "is invalid without a category" 
  # do
  # 	expect(build(:article, :association => nil)).to_not be_valid
  # end


end
