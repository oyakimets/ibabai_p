require 'spec_helper'

describe LeadsController do

	let(:lead) { FactoryGirl.create(:lead) }

	before { click_button "Become Partner", no_capybara: true }

	describe "creating a lead with Ajax" do

		it "should increment leads count" do
			expect do
				xhr :post, :create, :lead
			end.to change(Lead, :count).by(1)
		end

		it "should respond with success" do
			xhr :post, :create, :lead
			expect(response).to be_success
    	end
	end
end

