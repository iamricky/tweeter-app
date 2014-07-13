require 'spec_helper'

describe "Static pages" do
	describe "Home page" do
		it "should have the content 'Tweeter'" do
			visit '/static_pages/home'
			expect(page).to have_content('Tweeter')
		end

		it "should have the right title" do
			visit '/static_pages/home'
			expect(page).to have_title("Tweeter | Home")
		end
	end

	describe "Help page" do
		it "should have the content 'Help'" do
			visit '/static_pages/help'
			expect(page).to have_content('Help')
		end

		it "should have the right title" do
			visit '/static_pages/help'
			expect(page).to have_title("Tweeter | Help")
		end
	end

	describe "About page" do
		it "should have the content 'About Tweeter'" do
			visit '/static_pages/about'
			expect(page).to have_content('About Tweeter')
		end

		it "should have the right title" do
			visit '/static_pages/about'
			expect(page).to have_title("Tweeter | About")
		end
	end
end