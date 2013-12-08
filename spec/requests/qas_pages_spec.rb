require 'spec_helper'

describe "q&a pages"  do

	subject { page }

	
	describe "with invalid info" do
		before { visit faq_path }

		it "should not create a question" do
				
			expect { click_button "Post" }.not_to change(Qa, :count)
		end

		describe "error message" do
			before { click_button "Post" }
			it { should have_content('error') }
		end
	end

	describe "with valid info" do
		
		before do
			visit faq_path
			fill_in 'qa_question', with: "Lorem ipsum" 
		end
		it "should create a question" do
			expect { click_button "Post" }.to change(Qa, :count).by(1)
				
		end
	end
end
