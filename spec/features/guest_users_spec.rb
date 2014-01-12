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

	scenario "can register an account" do
		visit '/'
		click_link 'Sign up'
		fill_in 'Name', with: 'Santa Claus'
		fill_in 'Email', with: 'papac@hohoho.com'
		fill_in 'Password', with: 'pr3s3nt5'
		fill_in 'Password confirmation', with: 'pr3s3nt5'
		click_button 'Submit'
		expect(page).to have_content 'Thanks for signing up!'
	end


end