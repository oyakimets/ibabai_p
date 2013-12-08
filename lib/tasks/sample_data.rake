namespace :db do 
	desc "fill datadase with sample data"
	task populate: :environment do
		make_leads
		make_qs
		make_qas
	end
end

def make_leads

	Lead.create!( fname:     "Lorem",
				  lname:     "Ipsum",
				  company:   "IBABAI",
				  email:     "bai@example.com",
				  tel:       "12345"
				 )
			
	50.times do |n|
		fname = "Lorem-#{n+1}"
		lname = "Ipsum-#{n+1}"
		company = "IBABAI-#{n+1}"
		email = "bai-#{n+1}@ibabai.com"
		tel = "1234#{n+1}"
		Lead.create!(  fname:   fname,
						lname:   lname,
						company: company,
						email:   email,
						tel:     tel
						)
	end
end

	
def make_qs
	
	Qa.create!( question: 		"Lorem Ipsum",
				   answer: 		"This is an answer",
					 email:     "bai@ibabai.com"

			)
	9.times do |n|
		question = "Lorem Ipsum #{n+1}"
		answer = "This is an answer #{n+1}"
		email = "bai-#{n+1}@ibabai.com"
		Qa.create!( question:   question,
					 answer:     answer,
					 email:      email
					)
		
	end
end

def make_qas
	Qa.create!( question: 		"Lorem Ipsum",
				email:          "iba@ibabai.com"

			)
	9.times do |n|
		question = "Fucking Faker #{n+1}"
		email = "iba-#{n+1}@ibabai.com"
		Qa.create!( question:   question,
					email:      email
					)
		
	end
end		
		
	
