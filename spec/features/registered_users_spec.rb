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

	scenario "cannot login with invalid params" do
		visit '/'
		click_link "Login"
		fill_in 'Email', with: 'notanemail'
		click_button "Login"
		expect(page).to have_content "Email or password is invalid"
	end

	context "while logged in" do
		before do
			visit '/'
			click_link "Login"
			fill_in 'Email', with: 'hp@whitehouse.gov'
			fill_in 'Password', with: 's0s3cur3'
			click_button "Login"
		end

		scenario "can logout" do
			click_link "Logout"
			expect(page).to have_content "Logged out"
		end


		scenario "can post a new article with valid params" do
			visit '/articles/new'
			fill_in 'Title', with: 'The Most Delicious Fish'
			fill_in 'Content', with: 'Is obviously salmon'
			click_button 'Submit'
			expect(page).to have_content "The Most Delicious Fish"
		end


		scenario "cannot post a new article with invalid params" do
			visit '/articles/new'
			click_button 'Submit'
			expect(page). to have_content "Oooops!"
		end
	end
end