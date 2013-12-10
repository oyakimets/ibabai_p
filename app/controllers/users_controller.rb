class UsersController < ApplicationController
  def new
  	@user=User.new
  end

  def create
  	if @user.save
  		redirect to user_path
  	else
  		render 'new'
  	end
  end

end
