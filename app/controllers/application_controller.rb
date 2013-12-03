class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  respond_to :html, :js

  def new
  	@lead = Lead.new
  end

  def create
  	@lead = Lead.new(params[:lead]) 
  	if @lead.save
      flash.now[:success] = "Thank you! We'll be back shortly..."
      respond_with @lead
    else
      flash.now[:error] = "All fields should be filled in!"
      
    end
  end

end