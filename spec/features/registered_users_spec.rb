require 'spec_helper'

feature "registered users" do
	before do
		create(:user)
	end
	scenario "can login with valid params" do
		visit '/'
		click_link "Login"
		fill_in 'Email', with: 'hp@whitehouse.gov'
		fill_in 'Password', with: 's0s3cur3'
		click_button "Login"
		expect(page).to have_content "Thanks for logging in!"
	end

	scenario "cannot login with invalid params"

	scenario "can logout"

	scenario "can post a new article with valid params"

	scenario "cannot post a new article with invalid params"

end