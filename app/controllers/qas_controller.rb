class QasController < ApplicationController
  
  def index 
    @qas = Qa.where.not(answer: nil)           
  end

  def create
    @qa = Qa.new(qa_params)
    if @qa.save
      flash[:success] = "Thanks for your question! We'll reply asap."
      redirect_to faq_url
    else
      flash[:error] = "Oops! No more than 140 chars. Try again!"
      redirect_to faq_url

    end
  end


  def destroy
  end

  private
    def qa_params
      params.require(:qa).permit(:question, :email)
    end
end
