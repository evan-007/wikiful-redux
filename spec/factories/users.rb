# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    name "Harry_Potter"
    email "hp@whitehouse.gov"
    password "s0s3cur3"
    password_confirmation "s0s3cur3"

  end
end
