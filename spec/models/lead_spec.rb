require 'spec_helper'

describe Lead do

	before { @lead = Lead.new(fname: "Jon", lname: "Stuart", company: "CNN", tel: "0123456789", email: "js@cnn.com") }

	subject { @lead }

	it { should respond_to(:fname) }
	it { should respond_to(:lname) }
	it { should respond_to(:company) }
	it { should respond_to(:tel) }
	it { should respond_to(:email) }

	it { should be_valid }

	describe "when first name is not present" do
		before { @lead.fname = " " }
		it { should_not be_valid }
	end

	describe "when last name is not present" do
		before { @lead.lname = " " }
		it { should_not be_valid }
	end

	describe "when company name is not present" do
		before { @lead.company = " " }
		it { should_not be_valid }
	end

	describe "when tel is not present" do
		before { @lead.tel = " " }
		it { should_not be_valid }
	end

	describe "when email is not present" do
		before { @lead.email = " " }
		it { should_not be_valid }
	end
end

