require 'spec_helper'

describe "Static pages" do
	let(:base_title) { "Tweeter" }
	
	describe "Home page" do
		it "should have the content 'Tweeter'" do
			visit '/static_pages/home'
			expect(page).to have_content('Tweeter')
		end

		it "should have the correct title" do
			visit '/static_pages/home'
			expect(page).to have_title("#{base_title} | Home")
		end
	end

	describe "About page" do
		it "should have the content 'About Tweeter'" do
			visit '/static_pages/about'
			expect(page).to have_content('About')
		end

		it "should have the correct title" do
			visit '/static_pages/about'
			expect(page).to have_title("#{base_title} | About")
		end
	end

	describe "Help page" do
		it "should have the content 'Help'" do
			visit '/static_pages/help'
			expect(page).to have_content('Help')
		end

		it "should have the correct title" do
			visit '/static_pages/help'
			expect(page).to have_title("#{base_title} | Help")
		end
	end

	describe "Contact page" do
		it "should have the content 'Contact'" do
			visit '/static_pages/contact'
			expect(page).to have_content('Contact')
		end

		it "should have the correct title" do
			visit '/static_pages/contact'
			expect(page).to have_title("#{base_title} | Contact")
		end
	end
end