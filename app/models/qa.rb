class Qa < ActiveRecord::Base
	attr_accessible :question, :answer, :email
	default_scope -> { order('created_at DESC') }
	before_save { self.email = email.downcase }
	validates :question, presence: true, length: { maximum: 140 }
		
end
