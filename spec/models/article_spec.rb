require 'spec_helper'

describe Article do
  def article_with_many_categories
    category_1 = double("category")
    category_2 = double("category")
    create(:article) do |a|
      ( a.categories << category_1)
      ( a.categories << category_2)
    end
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
  
  it "has many categories" do
    expect(article_with_many_categories.categories.count).to eq(2) 
  end



  it "is invalid without a category" do
    expect(build(:article, article_categories: nil)).to_not be_valid
  end
  


end
