require 'spec_helper'

feature 'Guest users' do

	scenario "view the article index" do
		visit root_path
		expect(page).to have_content("5 Articles")
	end

	scenario "view an article" do
		visit root_path
		click_link "read more"
		expect(page).to have_content(title)
	end

	scenario "can't create a new article"

	scenario "can view articles by author"

	scenario "can view articles by date"

end