class StaticPagesController < ApplicationController
   
  def product
  end

  def partners
  end

  def about
  end

  
  def contacts  	
  end

  def faq
    @qas = Qa.where.not(answer: nil) 
    @qa = Qa.new
  end
  
end
