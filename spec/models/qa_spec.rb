require 'spec_helper'

describe Qa do

	before do
		@qa = Qa.new(question: "Lorem ipsum", answer: "Ipsum lorem", email: "example@foo.com")
	end

	subject { @qa }
		it { should respond_to(:question) }
		it { should respond_to(:answer) }
		it { should respond_to(:email) }

	
	describe "with blanck content" do
		before { @qa.question = " " }
		it { should_not be_valid }
	end

	describe "with 140+ length" do
		before { @qa.question = "a"*141 }
		it { should_not be_valid }
	end
end
