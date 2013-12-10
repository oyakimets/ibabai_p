class Lead < ActiveRecord::Base
	attr_accessible :fname, :lname, :company, :tel, :email
	before_save { self_email = email.downcase }
	
	validates :fname, presence: true
	validates :lname, presence: true
	validates :company, presence: true
	validates :tel, presence: true
	validates :email, presence: true



end
