class User < ActiveRecord::Base
  attr_accessible :email, :password, :password_confirmation
  before_save { self_email = email.downcase }

  validates :email, presence: true
  

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable
end
