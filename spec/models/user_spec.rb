require 'spec_helper'

describe User do

  it "is valid with a name, email and password_digest" do
  	build(:user).should be_valid
  end

  it "is invalid without a name" do
  	expect(build(:user, :name => nil)).to have(1).errors_on(:name)
  end

  it "is invalid without an email" do
  	expect(build(:user, :email => nil)).to have(1).errors_on(:email)
  end

  it "is invalid without a password" do
  	expect(build(:user, :password => nil)).to have(1).errors_on(:password)
  end

  it "is invalid without a password confirmation" do
  	expect(build(:user, :password_confirmation => nil)).to have(1).errors_on(:password_confirmation)
  end


  it "is invalid when password and password_confirmation do not match" do
  	build(:user, :password => "itsdelicious").should_not be_valid
  end

  it "is invalid with a duplicate name" do
  	create(:user, :email => "different@email.com")
  	expect(build(:user)).to have(1).errors_on(:name)
  end

  it "is invalid with a duplicate email" do
  	create(:user, :name => "different name")
  	expect(build(:user)).to have(1).errors_on(:email)
  end

  it "has many articles"
end
