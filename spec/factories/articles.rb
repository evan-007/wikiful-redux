# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :article do
  	title "Best Book Ever"
  	content "Just kidding"
  end
  factory :article_many do
    sequence(:title) { |n| "Harry Potter Book ##{n}" }
    sequence(:content) { |n|  "Once upon a time there were #{n} wizards..." }
    
  end

  factory :invalid_article do
  	title nil
  end
end
