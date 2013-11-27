require 'spec_helper'

describe "Static pages" do
  subject { page }

  describe "Product page" do
    before { visit root_path }
    it { should have_title(full_title("Product")) }
     
  end

  describe "About page" do
    before { visit about_path }

    it { should have_content('Some stuff about us.') }
    it { should have_title(full_title('About')) } 
  end

  describe "Contacts page" do
    before { visit contacts_path }
  	it { should have_content('IBABAI, INC.') }
  	it { should have_title( full_title("Contacts")) }
  end

  describe "FAQ page" do
    before { visit faq_path }
    it { should have_content('Ask your question here.') }
    it { should have_title(full_title("Frequently Asked Questions")) }
  end

  describe "Partners page" do
    before { visit partners_path }
    it { should have_title(full_title("Partners")) }
    
  end

  
end
