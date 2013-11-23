require 'spec_helper'

describe "Static pages" do

  describe "About page" do

    it "should have the content 'ibabai'" do
    	visit '/static_pages/about'
    	expect(page).to have_content('ibabai')
    end

    it "should have the title 'About'" do
      visit '/static_pages/about'
      expect(page).to have_title("ibabai | About")
    end
  end

  describe "Contacts page" do

  	it "should have the content about contacts" do
  		visit '/static_pages/contacts'
  		expect(page).to have_content('Our contacts')
  	end

    it "should have title 'Contacts'" do
      visit '/static_pages/contacts'
      expect(page).to have_title("ibabai | Contacts")
    end
  end

  describe "FAQ page" do

    it "should have the FAQ" do
      visit '/static_pages/FAQ'
      expect(page).to have_content('Frequently Asked Questions')
    end

    it "should have title 'FAQ'" do
      visit '/static_pages/FAQ'
      expect(page).to have_title("ibabai | FAQ")
    end
  end

  describe "Partners page" do

    it "should have the content for partners" do
      visit '/static_pages/partners'
      expect(page).to have_content('engage your customers')
    end

    it "should have title 'Partners'" do
      visit '/static_pages/partners'
      expect(page).to have_title("ibabai | Partners")
    end
  end

  describe "Product page" do

    it "should have the content about product" do
      visit '/static_pages/product'
      expect(page).to have_content('How this works')
    end

    it "should have title 'Product'" do
      visit '/static_pages/product'
      expect(page).to have_title("ibabai | Product")
    end
    
  end
end
