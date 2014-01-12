require 'spec_helper'

feature 'Guest users' do
	before do
		create(:article)
	end

	scenario "view the article index" do
		visit root_path
		expect(page).to have_content("Articles:")
	end

	scenario "view an article" do
		visit root_path
		first(:link, 'read more').click
		expect(page).to have_content("Article:")
	end

	scenario "can't create a new article"

	scenario "can view articles by author"

	scenario "can view articles by date"

end