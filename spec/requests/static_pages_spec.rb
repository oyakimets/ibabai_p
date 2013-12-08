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

 

  describe "Partners page" do
    before { visit partners_path }
    it { should have_title(full_title("Partners")) }
    
  end

  

  describe "faq page" do
    
    before { visit faq_path }

    it { should have_content("The latest Q&A") }
    it { should have_title(full_title("Frequently Asked Questions")) }

  end

  describe "q&as feed" do

    let!(:q1) { FactoryGirl.create(:qa, question: "Foo", answer: "Bar") }
    let!(:q2) { FactoryGirl.create(:qa, question: "Boo") }

    before { visit faq_path }

    describe "question/answer" do
      it { should have_content(q1.question) }
      it { should have_content(q1.answer) }
      it { should_not have_content(q2.question)}
    end
  end
end





 
