# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :article do
  	sequence(:title) { |n| "Harry Potter Book ##{n}" }
    sequence(:content) { |n|  "Once upon a time there were #{n} wizards..." }
  end
end
