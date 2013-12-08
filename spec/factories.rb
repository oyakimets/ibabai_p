FactoryGirl.define do
	factory :lead do
		fname     "James"
		lname     "Bond"
		company   "MI6"
		tel       "0077777777"
		email     "agent-007@mi6.com"
	end

	factory :qa do
		question "Lorem ipsum"
		answer "Ipsum lorem"
		email "foo@bar.com"
	end	
end
