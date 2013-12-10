require 'spec_helper'

describe User do
   
   before { @user = User.new( email: "ex@ibabai.com", password: "foobar", password: "confirmation") }
   subject { @user }

   it { should respond_to(:email) }
   it { should respond_to(:encrypted_password) }
   it { should respond_to(:password) }
   it { should respond_to(:password_confirmation) }


end

